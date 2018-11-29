package com.ycrobot.ycunderwaterworld.pojo;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String userName;
	private String email;
	private String password;
	private String gender;
	private String icon;
	private String birthday;
	private String createtime;
	private String lasttime;
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getLasttime() {
		return lasttime;
	}

	public void setLasttime(String lasttime) {
		this.lasttime = lasttime;
	}

	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", email=" + email + ", password=" + password + ", gender="
				+ gender + ", icon=" + icon + ", birthday=" + birthday + ", createtime=" + createtime + ", lasttime="
				+ lasttime + "]";
	}

	public User(Long id, String userName, String email, String password, String gender, String icon, String birthday,
			String createtime, String lasttime) {
		this.id = id;
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.icon = icon;
		this.birthday = birthday;
		this.createtime = createtime;
		this.lasttime = lasttime;
	}

	public User() {
	}

	
	
	
}
