package action;

import java.util.ArrayList;
import com.opensymphony.xwork2.Action;
import java.util.List;

import com.opensymphony.xwork2.ModelDriven;

import entity.Beach;
import entity.Facility;
import entity.Recommandation;
import entity.Tide;
import entity.User;
import entity.Weather;
import entity.Wind;
import service.BeachService;
import service.FacilityService;
import service.TideService;
import service.UserService;
import service.WeatherService;

public class BeachInfoAction implements ModelDriven, Action{
	private static final long serialVersionUID = 1L;
	@Override
	public Object getModel() {
		return null;
	}
	
	private int id = 0;
	private Beach currentBeach = new Beach();
	private BeachService beachService;
	private WeatherService weatherService;
	private Weather weather;
	private Wind wind;
	private Recommandation recommandation;
	private FacilityService facilityService;
	private Facility facility;
	private TideService tideService;
	private Tide tide;
	private int loginUserID = -1;
	private User currentLoginUser;
	private UserService userService;
	
	public int getLoginUserID() {
		return loginUserID;
	}

	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}

	public User getCurrentLoginUser() {
		return currentLoginUser;
	}

	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Facility getFacility() {
		return facility;
	}

	public void setFacility(Facility facility) {
		this.facility = facility;
	}

	public FacilityService getFacilityService() {
		return facilityService;
	}

	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}

	public Wind getWind() {
		return wind;
	}

	public void setWind(Wind wind) {
		this.wind = wind;
	}

	public Weather getWeather() {
		return weather;
	}

	public void setWeather(Weather weather) {
		this.weather = weather;
	}

	public WeatherService getWeatherService() {
		return weatherService;
	}

	public void setWeatherService(WeatherService weatherService) {
		this.weatherService = weatherService;
	}

	public String execute(){
		try {
			if (loginUserID != -1) {
				currentLoginUser = userService.getUserById(loginUserID);
			}
			currentBeach = beachService.getBeachById(id);
			Weather weatherInF = weatherService.getWeatherByBeach(currentBeach);
			weather = weatherService.changeTempToC(weatherInF);
			wind = weather.getWind();
			recommandation = beachService.getRecommandationByWaterTemp(weather.getTemp());
			facility = facilityService.findFacilityByBeachID(id);
			Tide tide1 = tideService.getTideByBeach(currentBeach);
			tide = tideService.changeTideData(tide1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public BeachService getBeachService() {
		return beachService;
	}

	public void setBeachService(BeachService beachService) {
		this.beachService = beachService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Beach getCurrentBeach() {
		return currentBeach;
	}

	public void setCurrentBeach(Beach currentBeach) {
		this.currentBeach = currentBeach;
	}

	public Recommandation getRecommandation() {
		return recommandation;
	}

	public void setRecommandation(Recommandation recommandation) {
		this.recommandation = recommandation;
	}

	public TideService getTideService() {
		return tideService;
	}

	public void setTideService(TideService tideService) {
		this.tideService = tideService;
	}

	public Tide getTide() {
		return tide;
	}

	public void setTide(Tide tide) {
		this.tide = tide;
	}
}
