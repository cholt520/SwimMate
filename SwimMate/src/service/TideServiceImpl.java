package service;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Properties;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import entity.Beach;
import entity.Tide;

public class TideServiceImpl implements TideService{

	@Override
	public Tide getTideByBeach(Beach beach) {
		String latitude = beach.getLatitude();
		String longitud = beach.getLongitude();
		Tide tide = new Tide();
		
		Properties properties = new Properties();
		try {
			properties.load(WeatherServiceImpl.class.getResourceAsStream("/tide.properties"));
			String tideurl = properties.get("tideUrl").toString();
			String lat = properties.get("lat").toString();
			String lon = properties.get("lon").toString();
			String key = properties.get("key").toString();
			
			String requestUrl = tideurl + lat + latitude + lon  + longitud + key;
			System.out.println(requestUrl);
			
			URL url;

			url = new URL(requestUrl);
			HttpURLConnection request = (HttpURLConnection) url.openConnection();
			request.connect();
			JsonParser jp = new JsonParser();
			JsonElement jelement = jp.parse(new InputStreamReader((InputStream) request.getContent()));
			JsonArray tidearray = jelement.getAsJsonArray();
			JsonObject tideJson   = tidearray.get(0).getAsJsonObject();
			
			
			Gson tideGson = new Gson();
			tide = tideGson.fromJson(tideJson, Tide.class);


			//testsjfdhsdkjhfskajhfksajhfksdj

			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return tide;
	}
	
	public static void main(String[] args){
		TideServiceImpl t = new TideServiceImpl();
		Beach beach = new Beach();
		beach.setLatitude("-31.921836");
		beach.setLongitude("115.9502062");
		Tide tide = t.getTideByBeach(beach);
		System.out.println(tide.getHeight());
		
	}

}
