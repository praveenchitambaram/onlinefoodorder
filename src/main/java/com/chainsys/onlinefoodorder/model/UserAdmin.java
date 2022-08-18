package com.chainsys.onlinefoodorder.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Admin")
public class UserAdmin {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "userid")
	@SequenceGenerator(name = "userid", sequenceName = "userid", allocationSize = 1)
	@Column(name = "USERID")
	private int userId;
	@Column(name = "USERNAME")
//	@NotBlank(message = "*Name can't be Empty")
	private String userName;
	@Column(name = "EMAIL")
//	@Email(message = "Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name = "USERPASSWORD")
	private String userPassword;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}