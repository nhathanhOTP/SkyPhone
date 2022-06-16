package com.nhathanh.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhathanh.dao.DienThoaiDAO;
import com.nhathanh.model.DienThoai;

@Controller
public class DisplayDienThoaiController {
	@Autowired
	DienThoaiDAO dao;

	@RequestMapping("/SkyPhone/index")
	public String display(Model model) {
		Optional<Integer> p = Optional.of(0);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		// ----------------------------------------//
		// Hiển thị sản phẩm ngừng bán có phân trang
		Page<DienThoai> dsNgungBan = dao.listDienThoaiDisplay(false, pageable);
		model.addAttribute("itemUnActive", dsNgungBan);
		// Hiển thị sản phẩm đang bán có phân trang
		Page<DienThoai> dsDangBan = dao.listDienThoaiDisplay(true, pageable);
		model.addAttribute("itemAc", dsDangBan);
		return "pageAdmin/indexAdmin";
	}

	// Phân trang sản phẩm đang bán
	@RequestMapping("/SkyPhone/page1")
	public String paginate1(Model model, @RequestParam("p") Optional<Integer> p) {
		Optional<Integer> defaultDisplay = Optional.of(0);
		Pageable pagedefaultDisplay = PageRequest.of(defaultDisplay.orElse(0), 5);
		//-------------------//
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<DienThoai> dsDangBan = dao.listDienThoaiDisplay(true, pageable);
		model.addAttribute("itemAc", dsDangBan);
		//Hiển thị lại sản phẩm ngừng bán
		Page<DienThoai> dsNgungBan = dao.listDienThoaiDisplay(false, pagedefaultDisplay);
		model.addAttribute("itemUnActive", dsNgungBan);
		return "pageAdmin/indexAdmin";
	}

	// Phân trang sản phẩm ngừng bán bán
	@RequestMapping("/SkyPhone/page2")
	public String paginate2(Model model, @RequestParam("p") Optional<Integer> p) {
		Optional<Integer> defaultDisplay = Optional.of(0);
		Pageable pagedefaultDisplay = PageRequest.of(defaultDisplay.orElse(0), 5);
		//-------------------//
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<DienThoai> dsNgungBan = dao.listDienThoaiDisplay(false, pageable);
		model.addAttribute("itemUnActive", dsNgungBan);
		// Hiển thị lại sản phẩm đang bán
		Page<DienThoai> dsDangBan = dao.listDienThoaiDisplay(true, pagedefaultDisplay);
		model.addAttribute("itemAc", dsDangBan);
		return "pageAdmin/indexAdmin";
	}
}
