package com.nhathanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.dao.ReportAdminDAO;
import com.nhathanh.model.Report;

@Controller
public class ReportController {
	@Autowired
	ReportAdminDAO report;

	@RequestMapping("/admin/report")
	public String report(Model model) {
		List<Report> ds = report.listReport();
		model.addAttribute("report", ds);
		return "pageAdmin/report";
	}
}
