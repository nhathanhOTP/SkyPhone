package com.nhathanh.controller;

import com.nhathanh.dao.*;
import com.nhathanh.model.DanhGia;
import com.nhathanh.model.DienThoai;
import com.nhathanh.model.NhanHang;
import com.nhathanh.service.ShoppingCartInfor;
import com.nhathanh.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
public class MainController {

	//Những thứ đã Siri làm được trong assignment từ lúc được bàn giao
	/*
		+ Tạo các lớp model + dao
		+ Thiết lập file pom.xml và cấu hình file application.properties
		* Ánh xạ hibernate thành công
		* Converter file sql cũ thành mới
		* Chỉnh sửa một số thông tin các table trong sql

			+  Các ID tự sinh bằng NEWID() chỉ áp dụng trong table DienThoai và HoaDon vì
			các id này sẽ hiển thị lên web, còn lại sẽ tự tăng bằng identity.

			+ Sửa kiểu dữ liệu uniqueidentifier thành varchar(255), money thành float
			để dễ ánh xạ.

(Quan Trọng)+ Xoá table Hinh trong sql, từ nay khi add một sản phẩm mới bao gồm 1 ảnh chính và 3 ảnh phụ.
			Mình sẽ tạo ra 1 folder có "tên" giống với id sản phẩm để lưu trữ 3 hình, mặc định hình chính
			sẽ là 0 và các hình còn lại là 1,2,3
			VD: Sản phẩm add vào có id "H123456" vs 1 ảnh chính và 3 ảnh phụ
			-> Folder mới được tạo ra có tên "H123456" được xác định ở "webapp/images/phone_images/H123456
			và lưu trữ ảnh chính 0.jpg, 3 ảnh phụ là 1,jpg 2.jpg và 3.jpg
			-> Thế nên khi mọi người run file sql "Data_SkyPhone.sql", lúc hiển thị
			sản phẩm trang chủ sẽ bị lỗi ảnh vì lúc này các sản phẩm đã có
			id "khác" với các folder ảnh có sẵn trong dự án, mọi người cần đổi tên lại

			+ Đổ dữ liệu sản phẩm và nhãn hàng lên trang chủ

			+ Đổ dữ liệu sản phẩm chi tiết khi chọn một sản phẩm trên trang chủ,
			bao gồm các sản phẩm cùng tên nhưng khác về dung lượng và màu

			+ Thêm trường "tình trạng" cho table DanhGia, đổ dữ liệu đánh giá lên trang sản phẩm chi
			tiết tương ứng

			+ Tạo lớp ShoppingCartInfor để lưu trữ thông tin giỏ hàng,
			lớp ShoppingCartService để lưu trữ các sản phẩm đơn hàng.

			+ Tạo chức năng add sản phẩm vào giỏ hàng, đồng thời hiển thị số
			lượng để navbar
			...

	 */
	//-----------------------------------------Import Beans----------------------------------------------
	@Autowired
	TaiKhoanDAO tkDAO;
	@Autowired
	DienThoaiDAO dtDAO;
	@Autowired
	HoaDonDAO hdDAO;
	@Autowired
	HDChiTietDAO hdctDAO;
	@Autowired
	DanhGiaDAO dgDAO;
	@Autowired
	NhanHangDAO nhDAO;
	@Autowired
	ShoppingCartService scs;


	//-----------------------------------------GET Mapping Method--------------------------------------------
	//-----------------------------------------User URL--------------------------------------------
	@GetMapping("/skyPhoneUser")
	public String getLink1() {
		return "/pageUser/index";
	}

	//Siri:Đổ dữ liệu chi tiết một sản phẩm khi chọn sản phẩm chi tiết
	@GetMapping("/item/product/{id}")
	public String getDetailProduct(Model model, @PathVariable("id") String id){
		DienThoai dt = dtDAO.findById(id).get();
		//Dữ liệu null thì gọi trang error
		if(dt.getId_dt().equals("") || dt.getId_dt() == null){
			return "/errorPage/error404";
		}else{
			List<DanhGia> danhGia = dgDAO.findAllDanhGiaWithDienThoai("%"+dt.getId_dt()+"%");
			List<DienThoai> dungLuongVaMau = dtDAO.getDienThoaiByTen("%"+dt.getTen_dt()+"%");
			//AddAttribute Sản phẩm chi tiết, màu và dung lượng
			model.addAttribute("DanhGia", danhGia);
			model.addAttribute("detailItem", dt);
			model.addAttribute("dungLuongVaMau", dungLuongVaMau);
			return "/pageUser/detailProduct";
		}
	}
	//Siri:Thêm một sản phẩm vào giỏ hàng khi người dùng nhâsn mua ngay
	@GetMapping("/cart/add/{id}")
	public String addItemToCart(Model model, @PathVariable("id") String id_dt){
		DienThoai dt = dtDAO.findById(id_dt).get();
		scs.add(dt);
		return "redirect:/item/product/"+id_dt;
	}
	//-----------------------------------------Admin URL--------------------------------------------
	@GetMapping("/skyPhoneAdmin")
	public String getLink2() {
		return "/pageAdmin/indexAdmin";
	}
	//-----------------------------------------Employee URL--------------------------------------------
	@GetMapping("/skyPhoneEmploy")
	public String getLink3() {
		return "/pageEmploy/staff_main";
	}

	//-----------------------------------------Model Attribute-----------------------------------------------
	//Siri:Đổ dữ liệu giỏ hàng lên thanh navbar
	@ModelAttribute("cart")
	public List<ShoppingCartInfor> getCart(){
		return scs.getList();
	}
	//Siri:Đổ dữ liệu list sản phẩm lên trang chủ người dùng
	@ModelAttribute("items")
	public List<DienThoai> getDienThoai(){
		return dtDAO.findAll();
	}
	//Siri:Đổ dữ liệu nhãn hãng lên thanh navbar
	@ModelAttribute("brands")
	public List<NhanHang> getNhanHang(){
		return nhDAO.findAll();
	}
}
