package com.chainsys.onlinefoodorder.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.onlinefoodorder.model.UserAdmin;
import com.chainsys.onlinefoodorder.service.UserAdminService;

@Controller
@RequestMapping("/admin")

public class UserAdimController {
	@Autowired
	private UserAdminService userAdminService;

	@GetMapping("/adminlist")
	public String getCompanyAdmins(Model model) {
		List<UserAdmin> allCmd = userAdminService.getCompanyAdmins();
		model.addAttribute("alladmins", allCmd);
		return "list-admins";
	}

	@GetMapping("/addadminform")
	public String showAddAdminForm(Model model) {
		UserAdmin theCmd = new UserAdmin();
		model.addAttribute("addadmin", theCmd);
		return "add-admin-form";
	}

	@PostMapping("/add")
	public String addNewCompanyAdmin(@ModelAttribute("addadmin") UserAdmin theCmd, Errors errors) {
		if (errors.hasErrors()) {
			return "add-customer-form";
		}
		userAdminService.save(theCmd);
		return "redirect:/admin/findadminsbyid?userid=" + theCmd.getUserId();
	}

	@GetMapping("/updateadminidform")
	public String showUpdateAdminForm(int userid, Model model) {
		UserAdmin theCren = userAdminService.findById(userid);
		model.addAttribute("updateadminform", theCren);
		return "update-admin-form";
	}

	@PostMapping("/updateadmins")
	public String updateCompanyAdmin(@Valid @ModelAttribute("updateadminform") UserAdmin theCmd, Errors errors) {
		if (errors.hasErrors()) {
			return "update-admin-form";
		}
		userAdminService.save(theCmd);
		return "redirect:/admin/adminlist";
	}

	@GetMapping("/deleteadminbyidform")
	public String showFindByForm() {
		return "delete-admin-by-id-form";
	}

	@GetMapping("/deleteadmin")
	public String deleteCompanyAdmin(int userid) {
		userAdminService.deleteById(userid);
		return "redirect:/admin/adminlist";
	}

	@GetMapping("/findadminbyidform")
	public String showDeleteForm() {
		return "find-admin-by-id-form";
	}

	@GetMapping("/findadminsbyid")
	public String findCompanyAdminById(int userid, Model model) {
		UserAdmin theCmd = userAdminService.findById(userid);
		model.addAttribute("findadminbyid", theCmd);
		return "find-admin-by-id-form";
	}

	@GetMapping("/adminlogin")
	public String adminLogin(Model model) {
		UserAdmin companyAdmin = new UserAdmin();
		model.addAttribute("login", companyAdmin);
		return "admin-login-form";
	}

	@PostMapping("/userlogin")
	public String checkingAccess(@ModelAttribute("login") UserAdmin theUserAdmin) {
		UserAdmin companyAdmin = userAdminService.getUserIdAndUserPassword(theUserAdmin.getUserId(),
				theUserAdmin.getUserPassword());
		if (companyAdmin != null) {
			return "redirect:/admin/adminview";
		} else
			return "Invalid-user-error";
	}
		@GetMapping("/adminview")
		public String getAdmin(Model model) {
			return "adminaccess";
		}
}
