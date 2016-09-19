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

	@Override
	public User getUserById(int id) {
		return userDao.getUserById(id);
	}

	@Override
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	@Override
	public void deleteUser(User user) {
		userDao.deleteUser(user);
		
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
		
	}

	@Override
	public void modifyUser(User user) {
		userDao.modifyUser(user);
		
	}

	@Override
	public User getUserByUserName(String username) {
		return userDao.getUserByUserName(username);
	}

}
