package action;

import service.UserService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

import entity.User;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	private List<User> userList;
	private String firstname = "";
	private String lastname = "";
	private String email = "";
	private String phone = "";
	private String username = "";
	private String password = "";
	private int loginUserID = -1;
	private User currentLoginUser;
	private String currentPasswd;

	public String getCurrentPasswd() {
		return currentPasswd;
	}

	public void setCurrentPasswd(String currentPasswd) {
		this.currentPasswd = currentPasswd;
	}

	public User getCurrentLoginUser() {
		return currentLoginUser;
	}

	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}

	public int getLoginUserID() {
		return loginUserID;
	}

	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public String execute() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String login() {
		try {
			System.out.println(username);
			System.out.println(password);
			User user = userService.getUserByUserName(username);

			if (user != null) {
				if (user.getPasswd().equals(password)) {
					addActionMessage("Login succeed");
					System.out.println("Login succeed");
					loginUserID = user.getUser_id();
					currentLoginUser = userService.getUserById(loginUserID);
					return "success";
				} else {
					System.out.println("Login failed, passwd and username don't match!");
					addActionError("Your user name and password don't match!");
					return "error";
				}
			} else {
				System.out.println("Login failed, no such user!");
				addActionError("This username doesn't exist!");
				return "error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Failed " + e);
			return "error";
		}
	}

	public String signup() {
		try {
			System.out.println(firstname);
			System.out.println(lastname);
			System.out.println(email);
			System.out.println(phone);
			System.out.println(username);
			System.out.println(password);
			User existUser = userService.getUserByUserName(username);
			if (existUser == null) {
				User newUser = new User();
				newUser.setFirstName(firstname);
				newUser.setLastName(lastname);
				newUser.setEmail(email);
				newUser.setPhone(phone);
				newUser.setUserName(username);
				newUser.setPasswd(password);
				userService.addUser(newUser);
				System.out.println("Signup successfully!");
				addActionMessage("Signup successfully!");
				return "success";
			} else {
				System.out.println("This username already exists!");
				addActionError("This username already exists! Please change another one!");
				return "error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	public String jumpToProfilePage() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String modifyProfile() {
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			//Modify user information
			if (!firstname.equals("")) {
				currentLoginUser.setFirstName(firstname);
			}
			if (!lastname.equals("")) {
				currentLoginUser.setLastName(lastname);
			}
			if (!email.equals("")) {
				currentLoginUser.setEmail(email);
			}
			if (!phone.equals("")) {
				currentLoginUser.setPhone(phone);
			}
			userService.modifyUser(currentLoginUser);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

}
