package com.nhathanh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhathanh.dao.TaiKhoanDAO;
import com.nhathanh.model.TaiKhoan;
import com.nhathanh.service.MailerService;
import com.nhathanh.service.SessionService;

@Controller
public class AuthController {
	@Autowired
	TaiKhoanDAO daoTk;
	@Autowired
	SessionService session;
	@Autowired
	MailerService mailer;

	@RequestMapping("/login")
	public String getLogin() {
		return "pageAccount/login";
	}

	// Đăng nhập
	@RequestMapping("/admin/login")
	public String login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		try {
			TaiKhoan user = daoTk.getOne(username);
			System.out.println(user.getHo_ten());
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Mật khẩu không hợp lệ thử lại !");
			} else {
				session.set("user", user);
				String uri = (String) session.get("security-uri");
				if (uri != null) {
					return "redirect:" + uri;
				} else {
					model.addAttribute("message", "Đăng nhập thành công !");
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Email không tồn tại!");
		}
		return "pageAccount/login";
	}
	//Đăng xuất
	@RequestMapping("/skyPhone/logout")
	public String logout(Model model) {
		session.set("user", "");
		model.addAttribute("message", "Đăng xuất thành công!");
		return "redirect:/login";
	}

	// Reset lại password
	@RequestMapping("/admin/resetPass")
	public String resetPass(@RequestParam("emailForget") String email, Model model) {
		try {
			TaiKhoan user = daoTk.getOne(email);
			if (user.getEmail().equals(email)) {
				// cập nhật lại pass và Send mail thông báo
				updatPass(user);
				sendMail(email, "Reset lại mật khẩu của bạn", body(user.getHo_ten()));
				model.addAttribute("message", "Tài khoản của bạn đã được reset mật khẩu, vui lòng kiểm tra mail!");
			} else {
				model.addAttribute("message", "Không tìm thấy tài khoản của bạn!");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Email không tồn tại!");
		}
		return "pageAccount/login";
	}
	//Gửi maill thông báod dến người dùng
	void sendMail(String to, String subject, String body) {
		try {
			mailer.queue(to, subject, body);
			System.out.println("Gửi mail thành công");
		} catch (Exception e) {
			System.out.println("Gửi mail thất bại");
		}
	}
	//Hàm dùng Reset lại password
	void updatPass(TaiKhoan user) {
		user.setPassword("123@123");
		daoTk.save(user);
	}

	String body(String name) {
		String body = " \r\n"
				+ "    <div style=\"justify-content: center;align-items: center;display: flex;\">\r\n"
				+ "        <form action=\"\" style=\"width: 700px; margin: auto;\">\r\n"
				+ "            <div style=\" background: linear-gradient(  #ff9966, #ff5e62);justify-content: left;align-items: center;display: flex; border-top-left-radius: 7px;border-top-right-radius: 7px;\">\r\n"
				+ "                <p style=\"color: white;margin-left: 15px;\">Gửi đến người dùng:</p>\r\n"
				+ "                <h3 style=\"color: white;margin-left: 15px;font-family: Verdana, Geneva, Tahoma, sans-serif;\">"+name+"</h3>\r\n"
				+ "            </div>\r\n"
				+ "            <div style=\"justify-content: left;align-items: center;display: flex;padding: 15px; color: rgb(94, 94, 94);\">\r\n"
				+ "                <p>Hệ thống <b>SkyPhone</b> thông báo với bạn, rằng bạn đã quên mật khẩu từ hệ thống, hệ thống sẽ tự động reset lại mật khẩu của bạn, mật khẩu của <b>SkyPhone</b> mặc định của bạn là:\r\n"
				+ "                </p>\r\n"
				+ "            </div>\r\n"
				+ "            <div style=\"height: 0.5px;background-color: rgb(228, 228, 228);margin-left: 15px;margin-right: 15px;\"></div>\r\n"
				+ "            <div style=\"margin-left: 15px;\">\r\n"
				+ "                <h1 style=\"font-family: Arial, Helvetica, sans-serif;color: rgb(43, 43, 43);\">Mật khẩu của bạn: 123@123</h1>\r\n"
				+ "            </div>\r\n"
				+ "            <div style=\"border-bottom-left-radius: 7px;border-bottom-right-radius: 7px; background: linear-gradient( #ff9966, #ff5e62);justify-content: left;align-items: center;display: flex;\">\r\n"
				+ "                <h3 style=\"color: white;margin-left: 15px;font-family: Verdana, Geneva, Tahoma, sans-serif;\">SkyPhone</h3>\r\n"
				+ "            </div>\r\n"
				+ "        </form>\r\n"
				+ "    </div>";
		return body;
	}
}
