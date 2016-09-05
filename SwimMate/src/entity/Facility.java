package entity;

public class Facility {
	private int id;
	private String name;
//	private String address;
	private String state;
	private String parking;
	private String babychange;
	private String showers;
	private String drinkingwater;
	private String toilet;
	private String patrolled;
	private double latitude;
	private double longitude;
	
	public String getToilet() {
		return toilet;
	}
	public void setToilet(String toilet) {
		this.toilet = toilet;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
//	public String getAddress() {
//		return address;
//	}
//	public void setAddress(String address) {
//		this.address = address;
//	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getBabychange() {
		return babychange;
	}
	public void setBabychange(String babychange) {
		this.babychange = babychange;
	}
	public String getShowers() {
		return showers;
	}
	public void setShowers(String showers) {
		this.showers = showers;
	}
	public String getDrinkingwater() {
		return drinkingwater;
	}
	public void setDrinkingwater(String drinkingwater) {
		this.drinkingwater = drinkingwater;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getPatrolled() {
		return patrolled;
	}
	public void setPatrolled(String patrolled) {
		this.patrolled = patrolled;
	}
}
