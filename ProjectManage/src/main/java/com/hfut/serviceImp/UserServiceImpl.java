package com.hfut.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hfut.dao.UserDao;
import com.hfut.domain.User;
import com.hfut.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	//
	public User getUserById(int userId) {
		return userDao.selectUserById(userId);
	}

	//
	public List<User> getUsers(){
		return userDao.selectUsers();       
	}
	
	//
	public boolean deleteUser(int id){
		return userDao.deleteUser(id);
	}
//
	public User getUsername(String username) {
	    User user = userDao.findByname(username);
	    return user;
	}
//
	public int register(User user) {
	    int result = this.userDao.addUser(user);
	    result=userDao.addAuthority(user);
        return result;
	}

}
