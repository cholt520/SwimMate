package entity;

public class Weather {

	private double temp;
	private String cloud;
	private double pressure;
	private double humidity;
	private Wind wind;
	private double temp_min;
	private double temp_max;
	
	/**
	* This is a getter which gets the temp
	@param temp - the temp to be get
	*/
	public double getTemp() {
		return temp;
	}
	
	/**
	* This is a setter which sets the temp
	@param temp - the temp to be set
	*/
	public void setTemp(double temp) {
		this.temp = temp;
	}
	
	/**
	* This is a getter which gets the cloud
	@param cloud - the cloud to be get
	*/
	public String getCloud() {
		return cloud;
	}
	
	/**
	* This is a setter which sets the user_id
	@param cloud - the cloud to be set
	*/
	public void setCloud(String cloud) {
		this.cloud = cloud;
	}
	
	/**
	* This is a getter which gets the pressure
	@param pressure - the pressure to be get
	*/
	public double getPressure() {
		return pressure;
	}
	
	/**
	* This is a setter which sets the pressure
	@param pressure - the pressure to be set
	*/
	public void setPressure(double pressure) {
		this.pressure = pressure;
	}
	
	/**
	* This is a getter which gets the humidity
	@param humidity - the humidity to be get
	*/
	public double getHumidity() {
		return humidity;
	}
	
	/**
	* This is a setter which sets the humidity
	@param humidity - the humidity to be set
	*/
	public void setHumidity(double humidity) {
		this.humidity = humidity;
	}
	
	/**
	* This is a getter which gets the wind
	@param wind - the wind to be get
	*/
	public Wind getWind() {
		return wind;
	}
	
	/**
	* This is a setter which sets the wind
	@param wind - the wind to be set
	*/
	public void setWind(Wind wind) {
		this.wind = wind;
	}
	
	/**
	* This is a getter which gets the temp_min
	@param temp_min - the temp_min to be get
	*/
	public double getTemp_min() {
		return temp_min;
	}
	
	/**
	* This is a setter which sets the temp_min
	@param temp_min - the temp_min to be set
	*/
	public void setTemp_min(double temp_min) {
		this.temp_min = temp_min;
	}
	
	/**
	* This is a getter which gets the temp_max
	@param temp_max - the temp_max to be get
	*/
	public double getTemp_max() {
		return temp_max;
	}
	
	/**
	* This is a setter which sets the temp_max
	@param temp_max - the temp_max to be set
	*/
	public void setTemp_max(double temp_max) {
		this.temp_max = temp_max;
	}
	
}
