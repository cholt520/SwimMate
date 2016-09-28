package service;

import java.util.List;

import dao.UserDao;
import entity.User;

public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/**
	* Get User By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public User getUserById(int id) {
		return userDao.getUserById(id);
	}

	/**
	* Get all Users
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	/**
	* Delete User
	*
	* @param user 
	* @throws java.Nullpoint.exception
	*/
	public void deleteUser(User user) {
		userDao.deleteUser(user);
		
	}

	/**
	* Add User
	*
	* @param user 
	* @throws java.Nullpoint.exception
	*/
	public void addUser(User user) {
		userDao.addUser(user);
		
	}

	/**
	* Change User
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public void modifyUser(User user) {
		userDao.modifyUser(user);
		
	}

	/**
	* Get User By UserName
	*
	* @param username 
	* @throws java.Nullpoint.exception
	*/
	public User getUserByUserName(String username) {
		return userDao.getUserByUserName(username);
	}

}
