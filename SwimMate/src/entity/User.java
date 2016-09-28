package entity;

public class User {

	private int user_id;
	private String firstName;
	private String lastName;
	private String phone;
	private String email;
	private String userName;
	private String passwd;
	
	/**
	* This is a getter which gets the user_id
	@param user_id - the user_id to be get
	*/
	public int getUser_id() {
		return user_id;
	}
	
	/**
	* This is a setter which sets the user_id
	@param user_id - the user_id to be set
	*/
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	/**
	* This is a getter which gets the firstName
	@param firstName - the firstName to be get
	*/
	public String getFirstName() {
		return firstName;
	}
	
	/**
	* This is a setter which sets the firstName
	@param firstName - the firstName to be set
	*/
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	/**
	* This is a getter which gets the lastName
	@param lastName - the lastName to be get
	*/
	public String getLastName() {
		return lastName;
	}
	
	/**
	* This is a setter which sets the lastName
	@param lastName - the lastName to be set
	*/
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	/**
	* This is a getter which gets the phone
	@param phone - the phone to be get
	*/
	public String getPhone() {
		return phone;
	}
	
	/**
	* This is a setter which sets the phone
	@param phone - the phone to be set
	*/
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	/**
	* This is a getter which gets the email
	@param email - the email to be get
	*/
	public String getEmail() {
		return email;
	}
	
	/**
	* This is a setter which sets the email
	@param email - the email to be set
	*/
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
	* This is a getter which gets the userName
	@param userName - the userName to be get
	*/
	public String getUserName() {
		return userName;
	}
	
	/**
	* This is a setter which sets the userName
	@param userName - the userName to be set
	*/
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/**
	* This is a getter which gets the passwd
	@param passwd - the passwd to be get
	*/
	public String getPasswd() {
		return passwd;
	}
	
	/**
	* This is a setter which sets the passwd
	@param passwd - the passwd to be set
	*/
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
}
