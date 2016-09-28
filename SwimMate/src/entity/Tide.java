package entity;


public class Tide {
	private double dt;
	private double height;
	private String date;
	private String type;
	
	/**
	* This is a getter which gets the dt
	@param dt - the dt to be get
	*/
	public double getDt() {
		return dt;
	}
	
	/**
	* This is a setter which sets the dt
	@param dt - the dt to be set
	*/
	public void setDt(double dt) {
		this.dt = dt;
	}
	
	/**
	* This is a getter which gets the date
	@param date - the date to be get
	*/
	public String getDate() {
		return date;
	}
	
	/**
	* This is a setter which sets the date
	@param date - the date to be set
	*/
	public void setDate(String date) {
		this.date = date;
	}
	
	/**
	* This is a getter which gets the height
	@param height - the height to be get
	*/
	public double getHeight() {
		return height;
	}
	
	/**
	* This is a setter which sets the height
	@param height - the height to be set
	*/
	public void setHeight(double height) {
		this.height = height;
	}

	/**
	* This is a getter which gets the type
	@param type - the type to be get
	*/
	public String getType() {
		return type;
	}
	
	/**
	* This is a setter which sets the type
	@param type - the type to be set
	*/
	public void setType(String type) {
		this.type = type;
	}
	
}
