package service;

import java.util.List;

import entity.Beach;
import entity.Weather;

public interface WeatherService {
	public Weather getWeatherByBeach(Beach beach);
	public Weather getWeatherById();
	public void addWeather(Weather weather);
	public Weather modifyWeather(Weather weather);
	public void deleteWeatherById(int id);
	public Weather changeTempToC(Weather weather);
}
