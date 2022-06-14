package com.nhathanh.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.dao.DienThoaiDAO;
import com.nhathanh.model.DienThoai;

@Controller
public class DienThoaiController {
	@Autowired
	DienThoaiDAO dao;
	@RequestMapping("/dienThoai")
	public String getDienThoai(Model model) {
//		Optional<Integer> p = Optional.of(0);
//		Pageable pageable = PageRequest.of(p.orElse(0), 5);
//		Page<DienThoai> page = dao.findAll(pageable);
//		model.addAttribute("page", page);
//		List<DienThoai> cate = dao.findAll();
//		model.addAttribute("cate", cate);
		return "pageAdmin/createProduct";
	}

//	@RequestMapping("/product/edit/{id}")
//	public String edit1(Model model, @PathVariable("id") Integer id) {
//		Product item = dao.findById(id).get();
//		model.addAttribute("item", item);
//		List<Product> items = dao.findAll();
//		model.addAttribute("items", items);
//		idPr = item.getId();
//		List<Category> cate = daoCate.findAll();
//		model.addAttribute("cate", cate);
//		return "product/index";
//	}
//
	@RequestMapping("/dienthoai/create")
	public String create1(DienThoai item) {
		System.out.println(item);
//		dao.saveDienThoai(item.getTen_dt(),item.getDung_luong(),
//				item.getMau(),item.getTra_gop(),item.getNha_sx(),item.getGia(),item.getMo_ta(),
//				item.getBao_hanh(),item.getNhanHang(),item.getSo_luong());
		return "<h1>Thêm sản phẩm thành công</h1>";
	}
//
//	@RequestMapping("/product/update")
//	public String update1(Product item) {
//		if (idPr != -1) {
//			item.setId(idPr);
//			dao.save(item);
//		}
//		System.out.println(item.getId());
//		return "redirect:/product/edit/" + idPr;
//	}
//
//	@RequestMapping("/product/delete/{id}")
//	public String create1(@PathVariable("id") Integer id) {
//		dao.deleteById(id);
//		return "redirect:/product";
//	}
}
