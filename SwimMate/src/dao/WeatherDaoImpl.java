package dao;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Weather;

/**
* The weather API instead of this interface
*
* @param none 
* @throws java.Nullpoint.exception
*/
public class WeatherDaoImpl extends HibernateDaoSupport implements WeatherDao{

	@Override
	public Weather getWeatherById() {
		return null;
	}

	@Override
	public void addWeather(Weather weather) {
		
	}

	@Override
	public Weather modifyWeather(Weather weather) {
		return null;
	}

	@Override
	public void deleteWeatherById(int id) {
		
	}


}
