package com.nhathanh.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.dao.DienThoaiDAO;
import com.nhathanh.model.DienThoai;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageDienThoaiController {
	@Autowired
	DienThoaiDAO dao;

	// Controller xử lý hình ảnh của sản phẩm
	@RequestMapping("skyPhone/image")
	public String dienThoaiImg(Model model) {
		model.addAttribute("sanPham", getProduct());
		model.addAttribute("soLuongAnh", kiemTraSoLuongAnh(dao.findAll()));
		return "pageAdmin/updateImage";
	}

	@RequestMapping("/skyPhone/image/{id}")
	public String linkImage(@PathVariable("id") String idImage, Model model) {
		DienThoai dt = dao.findById(idImage).get();
		model.addAttribute("dienThoai", dt);
		String path = "src/main/webapp/images/phone_images/"+dt.getId_dt()+"/";
		model.addAttribute("mainImage", new File(path+"0.jpg").exists()? "/images/phone_images/"+dt.getId_dt()+"/0.jpg":"#") ;
		model.addAttribute("image1", new File(path+"1.jpg").exists()? "/images/phone_images/"+dt.getId_dt()+"/1.jpg":"#") ;
		model.addAttribute("image2", new File(path+"2.jpg").exists()? "/images/phone_images/"+dt.getId_dt()+"/2.jpg":"#") ;
		model.addAttribute("image3", new File(path+"3.jpg").exists()? "/images/phone_images/"+dt.getId_dt()+"/3.jpg":"#") ;
		return "forward:/skyPhone/image";
	} 

	public List<Integer> kiemTraSoLuongAnh(List<DienThoai> list){
		List<Integer> listCount = new ArrayList<>();
		for(int i = 0; i < list.size(); i++){
			int count = 0;
			String path = "src/main/webapp/images/phone_images/"+list.get(i).getId_dt()+"/";
			File anhChinh = new File(path+"0.jpg");
			File anhPhu1 = new File(path+"1.jpg");
			File anhPhu2 = new File(path+"2.jpg");
			File anhPhu3 = new File(path+"3.jpg");
			count = anhChinh.exists() ? count+1:count;
			count = anhPhu1.exists() ? count+1:count;
			count = anhPhu2.exists() ? count+1:count;
			count = anhPhu3.exists() ? count+1:count;
			listCount.add(count);
		}
		return listCount;
	}
	@PostMapping("/skyPhone/image/add/{id}")
	public String capNhatAnh(@PathVariable("id") String id,
							 @RequestParam("anhChinh") MultipartFile mainImage,
							 @RequestParam("anhPhu1") MultipartFile image1,
							 @RequestParam("anhPhu2") MultipartFile image2,
							 @RequestParam("anhPhu3") MultipartFile image3){
		String path = "C:/Users/thaid/Desktop/SkyPhone/Assignment_GD1/src/main/webapp/images/phone_images/";
		new File(path+id).mkdirs();
		for(int i = 0; i < 4;i++){
			System.out.println(path+id+"/"+i+".jpg");
			try{
				File file = new File(path+id, i+".jpg");
				if(i == 0){
					mainImage.transferTo(file);
				}else if(i == 1){
					image1.transferTo(file);
				}else if(i == 2){
					image2.transferTo(file);
				}else{
					image3.transferTo(file);
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		return "redirect:/skyPhone/image/"+id;
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
