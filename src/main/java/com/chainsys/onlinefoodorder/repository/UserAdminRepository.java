package com.chainsys.onlinefoodorder.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.UserAdmin;

@Repository
public interface UserAdminRepository extends CrudRepository<UserAdmin, Integer> {
	UserAdmin findById(int id);

	UserAdmin save(UserAdmin userAdmin);

	void deleteById(int userId);

	List<UserAdmin> findAll();

	UserAdmin findByEmailAndUserPassword(String email, String str); // login user

}
