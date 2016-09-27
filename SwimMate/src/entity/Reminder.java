package entity;

public class Reminder {	
	
	private int ID;
	private int user_id;
	private int beach_id;
	private String date;
	private String description;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getBeach_id() {
		return beach_id;
	}
	public void setBeach_id(int beach_id) {
		this.beach_id = beach_id;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
