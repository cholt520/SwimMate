package service;


import entity.Beach;
import entity.Weather;

public interface WeatherService {
	
	/**
	* Get Weather By Beach
	*
	* @param beach 
	* @throws java.Nullpoint.exception
	*/
	public Weather getWeatherByBeach(Beach beach);
	
	/**
	* Get Weather By Id
	*
	* @param beach 
	* @throws java.Nullpoint.exception
	*/
	public Weather getWeatherById();
	
	/**
	* Add Weather
	*
	* @param weather 
	* @throws java.Nullpoint.exception
	*/
	public void addWeather(Weather weather);
	
	/**
	* Change Weather
	*
	* @param weather 
	* @throws java.Nullpoint.exception
	*/
	public Weather modifyWeather(Weather weather);
	
	/**
	* Delete Weather By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public void deleteWeatherById(int id);
	
	/**
	* Change Temp To Celsius
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Weather changeTempToC(Weather weather);
}
