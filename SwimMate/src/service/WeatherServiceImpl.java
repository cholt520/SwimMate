package service;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Properties;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import dao.WeatherDao;
import entity.Beach;
import entity.Weather;
import entity.Wind;

public class WeatherServiceImpl implements WeatherService{
	
	WeatherDao weatherDao;

	@Override
	/*
	 * use openweatherAPI to get weather information such as temp, humility, or
	 * pressure google Json will parse the data, directly to change Json to
	 * class
	 */
	public Weather getWeatherByBeach(Beach beach) {
		String latitude = beach.getLatitude();
		String longitud = beach.getLongitude();
		Weather weather = new Weather();

		try {
			Properties properties = new Properties();
			properties.load(WeatherServiceImpl.class.getResourceAsStream("/weather.properties"));
			String weatherurl = properties.get("weatherURL").toString();
			String lat = properties.get("lat").toString();
			String lon = properties.get("lon").toString();
			String weatherappid = properties.get("weatherappid").toString();

			// lat come from the properties file, latitude is parameter
			String sURL = weatherurl + lat + latitude + "&" + lon + longitud + "&" + weatherappid;
			//System.out.println(sURL);

			URL url;

			url = new URL(sURL);
			HttpURLConnection request = (HttpURLConnection) url.openConnection();
			request.connect();
			// using jsonParse to parse data from openWeatherAPI
			JsonParser jp = new JsonParser();
			JsonElement jelement = jp.parse(new InputStreamReader((InputStream) request.getContent()));
			JsonObject weatherJson = jelement.getAsJsonObject();
			JsonObject windJson = jelement.getAsJsonObject();
			weatherJson = weatherJson.getAsJsonObject("main");
			windJson = windJson.getAsJsonObject("wind");

			// using Google Gson to create link between json object to java
			// class
			Gson weatherGson = new Gson();
			Gson windGson = new Gson();

			weather = weatherGson.fromJson(weatherJson, Weather.class);
			Wind wind = windGson.fromJson(windJson, Wind.class);
			weather.setWind(wind);

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return weather;
	}
	
	@Override
	public Weather getWeatherById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addWeather(Weather weather) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Weather modifyWeather(Weather weather) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteWeatherById(int id) {
		// TODO Auto-generated method stub
		
	}

	public WeatherDao getWeatherDao() {
		return weatherDao;
	}

	public void setWeatherDao(WeatherDao weatherDao) {
		this.weatherDao = weatherDao;
	}

	@Override
	public Weather changeTempToC(Weather weather) {
		double tempC = (weather.getTemp()-273.15); 
		BigDecimal   b   =   new   BigDecimal(tempC);  
		double   tempreture   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  
		weather.setTemp(tempreture);
		return weather;
	}
	
}
