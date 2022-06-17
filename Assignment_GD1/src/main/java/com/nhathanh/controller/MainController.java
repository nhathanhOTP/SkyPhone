package com.nhathanh.controller;

import com.nhathanh.dao.*;
import com.nhathanh.model.DanhGia;
import com.nhathanh.model.DienThoai;
import com.nhathanh.model.HDChiTiet;
import com.nhathanh.model.HoaDon;
import com.nhathanh.model.NhanHang;
import com.nhathanh.service.SessionService;
import com.nhathanh.service.ShoppingCartInfor;
import com.nhathanh.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
public class MainController {

	// Những thứ đã Siri làm được trong assignment từ lúc được bàn giao
	/*
	 * + Tạo các lớp model + dao + Thiết lập file pom.xml và cấu hình file
	 * application.properties Ánh xạ hibernate thành công Converter file sql cũ
	 * thành mới Chỉnh sửa một số thông tin các table trong sql
	 * 
	 * + Các ID tự sinh bằng NEWID() chỉ áp dụng trong table DienThoai và HoaDon vì
	 * các id này sẽ hiển thị lên web, còn lại sẽ tự tăng bằng identity.
	 * 
	 * + Sửa kiểu dữ liệu uniqueidentifier thành varchar(255), money thành float để
	 * dễ ánh xạ.
	 * 
	 * (Quan Trọng)+ Xoá table Hinh trong sql, từ nay khi add một sản phẩm mới bao
	 * gồm 1 ảnh chính và 3 ảnh phụ. Mình sẽ tạo ra 1 folder có "tên" giống với id
	 * sản phẩm để lưu trữ 3 hình, mặc định hình chính sẽ là 0 và các hình còn lại
	 * là 1,2,3 VD: Sản phẩm add vào có id "H123456" vs 1 ảnh chính và 3 ảnh phụ ->
	 * Folder mới được tạo ra có tên "H123456" được xác định ở
	 * "webapp/images/phone_images/H123456 và lưu trữ ảnh chính 0.jpg, 3 ảnh phụ là
	 * 1,jpg 2.jpg và 3.jpg -> Thế nên khi mọi người run file sql
	 * "Data_SkyPhone.sql", lúc hiển thị sản phẩm trang chủ sẽ bị lỗi ảnh vì lúc này
	 * các sản phẩm đã có id "khác" với các folder ảnh có sẵn trong dự án, mọi người
	 * cần đổi tên lại
	 * 
	 * + Đổ dữ liệu sản phẩm và nhãn hàng lên trang chủ
	 * 
	 * + Đổ dữ liệu sản phẩm chi tiết khi chọn một sản phẩm trên trang chủ, bao gồm
	 * các sản phẩm cùng tên nhưng khác về dung lượng và màu
	 * 
	 * + Thêm trường "tình trạng" cho table DanhGia, đổ dữ liệu đánh giá lên trang
	 * sản phẩm chi tiết tương ứng
	 * 
	 * + Tạo lớp ShoppingCartInfor để lưu trữ thông tin giỏ hàng, lớp
	 * ShoppingCartService để lưu trữ các sản phẩm đơn hàng.
	 * 
	 * + Tạo chức năng add sản phẩm vào giỏ hàng, đồng thời hiển thị số lượng để
	 * navbar ...
	 * 
	 */
	// -----------------------------------------Import
	// Beans----------------------------------------------
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
	@Autowired
	SessionService ss;

	// -----------------------------------------GET Mapping
	// Method--------------------------------------------
	// -----------------------------------------User
	// URL--------------------------------------------
	@GetMapping("/skyPhoneUser")
	public String getLink1() {
		return "/pageUser/index";
	}

	// Siri:Đổ dữ liệu chi tiết một sản phẩm khi chọn sản phẩm chi tiết
	@GetMapping("/item/product/{id}")
	public String getDetailProduct(Model model, @PathVariable("id") String id) {
		DienThoai dt = dtDAO.findById(id).get();
		// Dữ liệu null thì gọi trang error
		if (dt.getId_dt().equals("") || dt.getId_dt() == null) {
			return "/errorPage/error404";
		} else {
			List<DanhGia> danhGia = dgDAO.findAllDanhGiaWithDienThoai("%" + dt.getId_dt() + "%");
			List<DienThoai> dungLuongVaMau = dtDAO.getDienThoaiByTen("%" + dt.getTen_dt() + "%");
			// AddAttribute Sản phẩm chi tiết, màu và dung lượng
			model.addAttribute("DanhGia", danhGia);
			model.addAttribute("detailItem", dt);
			model.addAttribute("dungLuongVaMau", dungLuongVaMau);
			return "/pageUser/detailProduct";
		}
	}

	// Siri:Kiểm tra lịch sử đơn hàng
	@GetMapping("/user/history")
	public String checkHistoryOrder(Model model, @RequestParam("id") Optional<String> sdt_hd) {
		String sdt = sdt_hd.orElse(ss.get("id"));
//		HDChiTiet hdct= hdctDAO.findById(sdt).get();
//		Dữ liệu null thì gọi trang error
//				if(sdt.equals("") || sdt == null){
//					return "/errorPage/error404";
//				}else{
		List<HoaDon> HoaDon = hdDAO.getHoaDonBySDT(sdt);
		List<HoaDon> HoaDonName = hdDAO.getHDbyName(sdt);
		List<HDChiTiet> hdct = hdctDAO.getHDCTByid(sdt);
//					AddAttribute lịch sử mua hàng
		model.addAttribute("HDN", HoaDonName);
		model.addAttribute("HD", HoaDon);
		model.addAttribute("HDCT", hdct);
		return "/pageUser/historyOrder";
//				}
	}

	// Siri:Thêm một sản phẩm vào giỏ hàng khi người dùng nhấn mua ngay
	@GetMapping("/cart/add/{id}")
	public String addItemToCart(Model model, @PathVariable("id") String id_dt) {
		DienThoai dt = dtDAO.findById(id_dt).get();
		scs.add(dt);
		return "redirect:/item/product/" + id_dt;
	}

	// -----------------------------------------Admin
	// URL--------------------------------------------
	@GetMapping("/skyPhoneAdmin")
	public String getAdmin() {
		return "/pageAdmin/indexAdmin";
	}

	// -----------------------------------------Employee
	// URL--------------------------------------------
	@GetMapping("/skyPhoneEmploy")
	public String getEmploy(Model model) {
		model.addAttribute("countOrder", hdDAO.findWaitingCount("Nguyễn Ngọc Thái Duy").get(0));
		model.addAttribute("countComment", dgDAO.findWaitingCount().get(0));
		return "/pageEmploy/staff_main";
	}

	// ----------------------------------------Employ
	// Comment-----------------------------
	@GetMapping("/skyPhoneEmploy/comment")
	public String getEmployComment(Model model) {
		Pageable page = PageRequest.of(0, 5);
		Page<DanhGia> waitingCommentList = dgDAO.findWaitingComment(page);
		model.addAttribute("danhGia", waitingCommentList);
		return "/pageEmploy/staff_comment";
	}

	@GetMapping("/skyPhoneEmploy/comment?page{id}")
	public String getEmployCommentPage(@PathVariable("id") int id, Model model) {
		Pageable page = PageRequest.of(id, 5);
		Page<DanhGia> waitingCommentList = dgDAO.findWaitingComment(page);
		model.addAttribute("danhGia", waitingCommentList);
		return "/pageEmploy/staff_comment";
	}

	@PostMapping("/skyPhoneEmploy/comment/accept/{stt}")
	public String postEmployAcceptComment(@PathVariable("stt") int id) {
		dgDAO.acceptById(id);
		return "redirect:/skyPhoneEmploy/comment";
	}

	@PostMapping("/skyPhoneEmploy/comment/delete/{stt}")
	public String postEmployDeleteComment(@PathVariable("stt") int id) {
		dgDAO.deleteById(id);
		return "redirect:/skyPhoneEmploy/comment";
	}
	// ----------------------------------------Employ
	// Order-----------------------------

	@GetMapping("/skyPhoneEmploy/order")
	public String getEmployOrder(Model model) {
		Pageable page = PageRequest.of(0, 5);
		Page<HoaDon> doneStatusList = hdDAO.findAllByNameAndDoneStatus("Nguyễn Ngọc Thái Duy", page);
		Page<HoaDon> notDoneStatusList = hdDAO.findAllByNameAndNotDoneStatus("Nguyễn Ngọc Thái Duy", page);
		model.addAttribute("doneOrder", doneStatusList);
		model.addAttribute("notDoneOrder", notDoneStatusList);
		return "/pageEmploy/staff_order";
	}

	@GetMapping("/skyPhoneEmploy/order/{id}")
	public String getEmployOrder(Model model, @PathVariable("id") String id_hd) {
		HoaDon hd = hdDAO.findById(id_hd).get();
		model.addAttribute("HoaDon", hd);
		model.addAttribute("HoaDonChiTiet", hdctDAO.findByIdHoaDon(hd.getId_hd()));
		if (hd.getTinh_trang() == 1) {
			return "/pageEmploy/staff_order_processing";
		} else if (hd.getTinh_trang() == 2) {
			return "/pageEmploy/staff_order_done";
		} else {
			return "/pageEmploy/staff_order_waiting";
		}
	}

	@GetMapping("/skyPhoneEmploy/order?page{id1}_{id2}")
	public String getPageEmployOrder(Model model, @PathVariable("id1") int doneOrderPage,
			@PathVariable("id2") int notDoneOrderPage) {
		Pageable donePage = PageRequest.of(doneOrderPage, 5);
		Pageable notDonePage = PageRequest.of(notDoneOrderPage, 5);
		Page<HoaDon> doneStatusList = hdDAO.findAllByNameAndDoneStatus("Nguyễn Ngọc Thái Duy", donePage);
		Page<HoaDon> notDoneStatusList = hdDAO.findAllByNameAndNotDoneStatus("Nguyễn Ngọc Thái Duy", notDonePage);
		model.addAttribute("doneOrder", doneStatusList);
		model.addAttribute("notDoneOrder", notDoneStatusList);
		return "/pageEmploy/staff_order";
	}

	@PostMapping("/skyPhoneEmploy/order/accept/{id}")
	public String postEmployAcceptOrder(@PathVariable("id") String id_hd) {
		HoaDon hd = hdDAO.findById(id_hd).get();
		hd.setTinh_trang(hd.getTinh_trang() + 1);
		hdDAO.save(hd);
		return "redirect:/skyPhoneEmploy/order/" + hd.getId_hd();
	}

	@PostMapping("/skyPhoneEmploy/order/delete/{id}")
	public String postEmployDeleteOrder(@PathVariable("id") String id_hd) {
		HoaDon hd = hdDAO.findById(id_hd).get();
		hdctDAO.deleteAllWithHoaDon(hd.getId_hd());
		hdDAO.delete(hd);
		return "redirect:/skyPhoneEmploy/order";
	}

	// -----------------------------------------Model
	// Attribute-----------------------------------------------
	// Siri:Đổ dữ liệu giỏ hàng lên thanh navbar
	@ModelAttribute("cart")
	public List<ShoppingCartInfor> getCart() {
		return scs.getList();
	}

	// Siri:Đổ dữ liệu list sản phẩm lên trang chủ người dùng
	@ModelAttribute("items")
	public List<DienThoai> getDienThoai() {
		return dtDAO.findAll();
	}

	// Siri:Đổ dữ liệu nhãn hãng lên thanh navbar
	@ModelAttribute("brands")
	public List<NhanHang> getNhanHang() {
		return nhDAO.findAll();
	}
}
