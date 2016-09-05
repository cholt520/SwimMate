package service;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
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

			JsonObject rootObejct = jp.parse(new InputStreamReader((InputStream) request.getContent())).getAsJsonObject();
			JsonElement je = rootObejct.get("heights");
			
			Gson tideGson = new Gson();
			List<Tide> tideList = Arrays.asList(tideGson.fromJson(je,
					Tide[].class));
			
			tide = tideList.get(0);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return tide;
	}

	@Override
	public Tide changeTideData(Tide tide) {
		double height = tide.getHeight();
		BigDecimal   b   =   new   BigDecimal(height);  
		double   height1   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  
		tide.setHeight(height1);
		
		String originalString = tide.getDate();
		String [] date = originalString.split("T");
		tide.setDate(date[0]);
		return tide;
	}
}
