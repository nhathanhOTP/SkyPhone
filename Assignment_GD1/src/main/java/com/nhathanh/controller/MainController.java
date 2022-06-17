package com.nhathanh.controller;

import com.nhathanh.dao.*;
import com.nhathanh.model.*;
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
	public String getLink1(Model model, @RequestParam("p") Optional<Integer> p) {
//		Optional<Integer> p = Optional.of(0);
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
//		List<DienThoai> dt = dtDAO.findAll();
		Page<DienThoai> page = dtDAO.listDienThoaiDisplay(true, pageable);
//		model.addAttribute("item", dt);
		model.addAttribute("page", page);
		return "/pageUser/index";
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
		TaiKhoan tk = (TaiKhoan) ss.get("user");
		model.addAttribute("countOrder", hdDAO.findWaitingCount(tk.getHo_ten()).get(0));
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
	//Nhân viên: phân trang đánh giá
	@GetMapping("/skyPhoneEmploy/comment?page{id}")
	public String getEmployCommentPage(@PathVariable("id") int id, Model model) {
		Pageable page = PageRequest.of(id, 5);
		Page<DanhGia> waitingCommentList = dgDAO.findWaitingComment(page);
		model.addAttribute("danhGia", waitingCommentList);
		return "/pageEmploy/staff_comment";
	}
	//Nhân viên: duyệt một đánh giá
	@PostMapping("/skyPhoneEmploy/comment/accept/{stt}")
	public String postEmployAcceptComment(@PathVariable("stt") int id) {
		dgDAO.acceptById(id);
		return "redirect:/skyPhoneEmploy/comment";
	}
	//Nhân viên: xoá một đánh giá
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
		TaiKhoan tk = (TaiKhoan) ss.get("user");
		Page<HoaDon> doneStatusList = hdDAO.findAllByNameAndDoneStatus(tk.getHo_ten(), page);
		Page<HoaDon> notDoneStatusList = hdDAO.findAllByNameAndNotDoneStatus(tk.getHo_ten(), page);
		model.addAttribute("doneOrder", doneStatusList);
		model.addAttribute("notDoneOrder", notDoneStatusList);
		return "/pageEmploy/staff_order";
	}
	//Nhân viên: hoá đơn chi tiết
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
	//Nhân viên: phân trang trong hoá đơn
	@GetMapping("/skyPhoneEmploy/order?page{id1}_{id2}")
	public String getPageEmployOrder(Model model, @PathVariable("id1") int doneOrderPage,
									 @PathVariable("id2") int notDoneOrderPage) {
		Pageable donePage = PageRequest.of(doneOrderPage, 5);
		Pageable notDonePage = PageRequest.of(notDoneOrderPage, 5);
		TaiKhoan tk = (TaiKhoan) ss.get("user");
		Page<HoaDon> doneStatusList = hdDAO.findAllByNameAndDoneStatus(tk.getHo_ten(), donePage);
		Page<HoaDon> notDoneStatusList = hdDAO.findAllByNameAndNotDoneStatus(tk.getHo_ten(), notDonePage);
		model.addAttribute("doneOrder", doneStatusList);
		model.addAttribute("notDoneOrder", notDoneStatusList);
		return "/pageEmploy/staff_order";
	}
	//Nhân viên: Chuyển trạng thái của một hoá đơn
	@PostMapping("/skyPhoneEmploy/order/accept/{id}")
	public String postEmployAcceptOrder(@PathVariable("id") String id_hd) {
		TaiKhoan tk = (TaiKhoan) ss.get("user");
		HoaDon hd = hdDAO.findById(id_hd).get();
		hd.setTinh_trang(hd.getTinh_trang() + 1);
		hd.setNguoi_thanh_toan(tk.getHo_ten());
		hdDAO.save(hd);
		return "redirect:/skyPhoneEmploy/order/" + hd.getId_hd();
	}
	//Nhân viên: Xoá một hoá đơn
	@PostMapping("/skyPhoneEmploy/order/delete/{id}")
	public String postEmployDeleteOrder(@PathVariable("id") String id_hd) {
		HoaDon hd = hdDAO.findById(id_hd).get();
		hdctDAO.deleteAllWithHoaDon(hd.getId_hd());
		hdDAO.delete(hd);
		return "redirect:/skyPhoneEmploy/order";
	}
	//-------------------------------User URL---------------------------------
	// Siri:Đổ dữ liệu chi tiết một sản phẩm khi chọn sản phẩm chi tiết
	@RequestMapping("/item/product/{id}")
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
	//Siri:Insert một đánh giá
	@PostMapping("/item/product/addComment/{id}")
	public String insertCommentProduct(@PathVariable("id") String id,
									   @RequestParam("soDienThoai") String sdt,
									   @RequestParam("noiDung") String comment,
									   Model model){
		boolean check = false;
		List<HoaDon> list = hdDAO.findAll();
		for(HoaDon i : list){
			if(i.getSdt_nguoi_nhan().equals(sdt)){
				for(HDChiTiet j : i.getHDChiTiet()){
					if(j.getDienThoai().getId_dt().equals(id)) {
						check = true;
						break;
					}
				}
			}
		}
		if(check){
			dgDAO.addDanhGia(sdt, comment, 0, id);
			model.addAttribute("message", "Đánh giá thành công, xin vui lòng chờ xét duyệt");
		}else{
			model.addAttribute("message", "Đánh giá thất bại, bạn chưa mua sản phẩm này");
		}
		return "forward:/item/product/"+id;
	}
	// Siri:Kiểm tra lịch sử đơn hàng
	@GetMapping("/user/history")
	public String checkHistoryOrder(Model model, @RequestParam("id") Optional<String> sdt_hd) {
		String sdt = sdt_hd.orElse(ss.get("id"));
//		HDChiTiet hdct= hdctDAO.findById(sdt).get();
//		Dữ liệu null thì gọi trang error
		if (sdt_hd.orElse(ss.get("id")).equals("") || sdt_hd.orElse(ss.get("id")) == null) {
			return "/errorPage/error404";
		} else {
			List<HoaDon> HoaDon = hdDAO.getHoaDonBySDT(sdt);
//					AddAttribute lịch sử mua hàng
			model.addAttribute("HD", HoaDon);
			return "/pageUser/historyOrder";
		}
	}

	// Siri:Thêm một sản phẩm vào giỏ hàng khi người dùng nhấn mua ngay
	@GetMapping("/cart/add/{id}")
	public String addItemToCart(Model model, @PathVariable("id") String id_dt) {
		DienThoai dt = dtDAO.findById(id_dt).get();
		scs.add(dt);
		return "redirect:/item/product/" + id_dt;
	}
	// -----------------------------------------Model
	// Attribute-----------------------------------------------
	// Siri:Đổ dữ liệu giỏ hàng lên thanh navbar
	@ModelAttribute("cart")
	public List<ShoppingCartInfor> getCart() {
		return scs.getList();
	}


	// Siri:Đổ dữ liệu nhãn hãng lên thanh navbar
	@ModelAttribute("brands")
	public List<NhanHang> getNhanHang() {
		return nhDAO.findAll();
	}
}
