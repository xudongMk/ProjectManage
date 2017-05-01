package com.hfut.service;

import java.util.List;

import com.hfut.domain.User;

public interface UserService {

	public User getUserById(int userId);
	public List<User> getUsers();
	//public int addUser(User user);
	public boolean deleteUser(int id);
	public User getUsername(String username);
	public int register(User user);
}
