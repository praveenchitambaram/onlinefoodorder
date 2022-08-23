package com.chainsys.onlinefoodorder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.model.UserAdmin;
import com.chainsys.onlinefoodorder.repository.UserAdminRepository;

@Service
public class UserAdminService {
	@Autowired
	private UserAdminRepository userAdminRepository;

	public List<UserAdmin> getCompanyAdmins() {
		return userAdminRepository.findAll();
	}

	public UserAdmin save(UserAdmin userAdmin) {

		return userAdminRepository.save(userAdmin);
	}

	public UserAdmin findById(int id) {
		return userAdminRepository.findById(id);
	}

	public void deleteById(int id) {
		userAdminRepository.deleteById(id);
	}

	public UserAdmin getEmailAndUserPassword(String email, String userPassword) {
		return userAdminRepository.findByEmailAndUserPassword(email, userPassword);
	}
}