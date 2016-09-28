package entity;

public class Facility {
	private int id;
	private String name;
	private String state;
	private String parking;
	private String babychange;
	private String showers;
	private String drinkingwater;
	private String toilet;
	private String patrolled;
	private double latitude;
	private double longitude;
	
	/**
	* This is a getter which gets the toilet
	@param toilet - the toilet to be get
	*/
	public String getToilet() {
		return toilet;
	}
	
	/**
	* This is a setter which sets the toilet
	@param toilet - the toilet to be set
	*/
	public void setToilet(String toilet) {
		this.toilet = toilet;
	}
	
	/**
	* This is a getter which gets the id
	@param id - the id to be get
	*/
	public int getId() {
		return id;
	}
	
	/**
	* This is a setter which sets the id
	@param id - the id to be set
	*/
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	* This is a getter which gets the name
	@param name - the name to be get
	*/
	public String getName() {
		return name;
	}
	
	/**
	* This is a setter which sets the name
	@param name - the name to be set
	*/
	public void setName(String name) {
		this.name = name;
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
	* This is a getter which gets the parking
	@param parking - the parking to be get
	*/
	public String getParking() {
		return parking;
	}
	
	/**
	* This is a setter which sets the parking
	@param parking - the parking to be set
	*/
	public void setParking(String parking) {
		this.parking = parking;
	}
	
	/**
	* This is a getter which gets the babychange
	@param babychange - the babychange to be get
	*/
	public String getBabychange() {
		return babychange;
	}
	
	/**
	* This is a setter which sets the babychange
	@param babychange - the babychange to be set
	*/
	public void setBabychange(String babychange) {
		this.babychange = babychange;
	}
	
	/**
	* This is a getter which gets the showers
	@param showers - the showers to be get
	*/
	public String getShowers() {
		return showers;
	}
	
	/**
	* This is a setter which sets the showers
	@param showers - the showers to be set
	*/
	public void setShowers(String showers) {
		this.showers = showers;
	}
	
	/**
	* This is a getter which gets the drinkingwater
	@param drinkingwater - the drinkingwater to be get
	*/
	public String getDrinkingwater() {
		return drinkingwater;
	}
	
	/**
	* This is a setter which sets the drinkingwater
	@param drinkingwater - the drinkingwater to be set
	*/
	public void setDrinkingwater(String drinkingwater) {
		this.drinkingwater = drinkingwater;
	}
	
	/**
	* This is a getter which gets the latitude
	@param latitude - the latitude to be get
	*/
	public double getLatitude() {
		return latitude;
	}
	
	/**
	* This is a setter which sets the latitude
	@param latitude - the latitude to be set
	*/
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	/**
	* This is a getter which gets the longitude
	@param longitude - the longitude to be get
	*/
	public double getLongitude() {
		return longitude;
	}
	
	/**
	* This is a setter which sets the longitude
	@param longitude - the longitude to be set
	*/
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	/**
	* This is a getter which gets the patrolled
	@param patrolled - the patrolled to be get
	*/
	public String getPatrolled() {
		return patrolled;
	}
	
	/**
	* This is a setter which sets the patrolled
	@param patrolled - the patrolled to be set
	*/
	public void setPatrolled(String patrolled) {
		this.patrolled = patrolled;
	}
}
