package service;

import java.util.List;

import entity.User;

public interface UserService {
	
	/**
	* Get User By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public User getUserById(int id);
	
	/**
	* Get all Users
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<User> getAllUser();
	
	/**
	* Delete User
	*
	* @param user 
	* @throws java.Nullpoint.exception
	*/
	public void deleteUser(User user);
	
	/**
	* Add User
	*
	* @param user 
	* @throws java.Nullpoint.exception
	*/
	public void addUser(User user);
	
	/**
	* Change User
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public void modifyUser(User user);
	
	/**
	* Get User By UserName
	*
	* @param username 
	* @throws java.Nullpoint.exception
	*/
	public User getUserByUserName(String username);
}
