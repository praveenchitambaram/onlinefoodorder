package com.chainsys.onlinefoodorder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.UserAdminRepository;
import com.chainsys.onlinefoodorder.model.UserAdmin;

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

	public UserAdmin getUserIdAndUserPassword(int userId, String userPassword) {
		return userAdminRepository.findByUserIdAndUserPassword(userId, userPassword);
	}
}