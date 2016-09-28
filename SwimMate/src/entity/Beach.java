package entity;

public class Beach {
	
	private int beach_id;
	private String beach_name;
	private String state;
	private String longitude;
	private String latitude;
	
	/**
	* This is a getter which gets the id
	@param id - the id to be get
	*/
	public int getBeach_id() {
		return beach_id;
	}
	
	/**
	* This is a setter which sets the id
	@param id - the id to be set
	*/
	public void setBeach_id(int beach_id) {
		this.beach_id = beach_id;
	}
	
	/**
	* This is a getter which gets the name
	@param name - the name to be get
	*/
	public String getBeach_name() {
		return beach_name;
	}
	
	/**
	* This is a setter which sets the name
	@param name - the name to be set
	*/
	public void setBeach_name(String beach_name) {
		this.beach_name = beach_name;
	}

	/**
	* This is a getter which gets the state
	@param state - the state to be get
	*/
	public String getState() {
		return state;
	}
	
	/**
	* This is a setter which sets the state
	@param state - the state to be set
	*/
	public void setState(String state) {
		this.state = state;
	}
	
	/**
	* This is a getter which gets the Longitude
	@param Longitude - the Longitude to be get
	*/
	public String getLongitude() {
		return longitude;
	}
	
	/**
	* This is a setter which sets the Longitude
	@param Longitude - the Longitude to be set
	*/
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	/**
	* This is a getter which gets the Latitude
	@param Latitude - the Latitude to be get
	*/
	public String getLatitude() {
		return latitude;
	}
	
	/**
	* This is a setter which sets the latitude
	@param latitude - the latitude to be set
	*/
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

}
