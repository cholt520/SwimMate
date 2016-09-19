package dao;

import java.util.List;

import entity.User;

public interface UserDao {
	public User getUserById(int id);
	public List<User> getAllUser();
	public void deleteUser(User user);
	public void addUser(User user);
	public void modifyUser(User user);
	public User getUserByUserName(String username);
}
