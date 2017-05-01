package com.hfut.dao;

import java.util.List;

import com.hfut.domain.User;


public interface UserDao {
	
	public User selectUserById(Integer userId);  

    public List<User> selectUsers();

    public boolean deleteUser(int id);
	public User findByname(String username);
	public int addUser(User user);
	public int addAuthority(User user);
}
