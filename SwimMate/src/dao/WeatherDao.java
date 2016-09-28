package dao;

import entity.Weather;

/**
* The weather API instead of this interface
*
* @param none 
* @throws java.Nullpoint.exception
*/
public interface WeatherDao {
	public Weather getWeatherById();
	public void addWeather(Weather weather);
	public Weather modifyWeather(Weather weather);
	public void deleteWeatherById(int id);
}
