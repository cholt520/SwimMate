package service;

import java.util.List;

import entity.User;

public interface UserService {
	public User getUserById(int id);
	public List<User> getAllUser();
	public void deleteUser(User user);
	public void addUser(User user);
	public void modifyUser(User user);
}
