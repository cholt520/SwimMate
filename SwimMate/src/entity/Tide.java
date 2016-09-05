package entity;


public class Tide {
	private double dt;
	private double height;
	private String date;
	private String type;
	
	public double getDt() {
		return dt;
	}
	public void setDt(double dt) {
		this.dt = dt;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
