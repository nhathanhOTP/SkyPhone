package com.nhathanh.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.dao.DienThoaiDAO;
import com.nhathanh.model.DienThoai;

@Controller
public class ImageDienThoaiController {
	@Autowired
	DienThoaiDAO dao;

	// Controller xử lý hình ảnh của sản phẩm
	@RequestMapping("skyPhone/image")
	public String dienThoaiImg(Model model) {
		model.addAttribute("sanPham", getProduct());
	//	model.addAttribute("soLuongAnh", soLuongAnh(getProduct()));
		return "pageAdmin/updateImage";
	}

	@RequestMapping("/skyPhone/image/{id}")
	public String linkImage(@PathVariable("id") String idImage, Model model) {
		DienThoai dt = dao.findById(idImage).get();
		model.addAttribute("dienThoai", dt);
		return "forward:/skyPhone/image";
	} 

	List<DienThoai> getProduct() {
		// Lấy ra toàn bộ sản phẩm trong SkyPhone
		List<DienThoai> ds = dao.findAll();
		// Kiểm tra xem thư mục này đã tồn tại hay chưa
		for (int i = 0; i < ds.size(); i++) {
			// Lấy ra id của điện thoại xem thử thư mục có tồn tại hay chưa
			// Nếu chưa thì sản phẩm đó sẽ được xét vào danh sách sản phẩm chưa có hình
			File f = new File("src/main/webapp/images/" + ds.get(i).getId_dt());
			if (f.exists()) {
				ds.remove(i);
			}
		}
		// Lưu số lượng ảnh có trong thư mục của các sản phẩm có sẵn nè
		return ds;
	}

//	List<Integer> soLuongAnh(List<DienThoai> ds) {
//		// List chứa các số lượng của sản phẩm trong ảnh
//		List<Integer> soLuong = new ArrayList<>();
//		for (int i = 0; i < ds.size(); i++) {
//			int slSkyPhone = soLuongAnh(ds.get(i).getId_dt());
//			soLuong.add(slSkyPhone);
//		}
//		return soLuong;
//	}
//
//	// Hàm trả về số lượng ảnh trong thư mục của ID sản phẩm trong SkyPhone
//	Integer soLuongAnh(String idDienThoai) {
//		File file = new File("src/main/webapp/images/" + idDienThoai);
//		String[] files = file.list();
//		System.out.println(files.length); 
//		return files.length;
//	}
}
