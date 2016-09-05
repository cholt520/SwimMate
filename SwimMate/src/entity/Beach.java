package entity;

public class Beach {
	private int beach_id;
	private String beach_name;
//	private String address;
	private String state;
	private String longitude;
	private String latitude;
	
	public int getBeach_id() {
		return beach_id;
	}
	public void setBeach_id(int beach_id) {
		this.beach_id = beach_id;
	}
	public String getBeach_name() {
		return beach_name;
	}
	public void setBeach_name(String beach_name) {
		this.beach_name = beach_name;
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
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

}
