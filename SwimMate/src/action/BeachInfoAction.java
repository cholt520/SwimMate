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
	

	/**
	 * get Login User ID 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public int getLoginUserID() {
		return loginUserID;
	}


	/**
	 * set Login User ID 
	 *
	 * @param loginUserID
	 * @throws java.Nullpoint.exception
	 */
	public void setLoginUserID(int loginUserID) {
		this.loginUserID = loginUserID;
	}
	
	/**
	 * get Current Login User 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public User getCurrentLoginUser() {
		return currentLoginUser;
	}

	/**
	 * set Current Login User 
	 *
	 * @param currentLoginUser
	 * @throws java.Nullpoint.exception
	 */
	public void setCurrentLoginUser(User currentLoginUser) {
		this.currentLoginUser = currentLoginUser;
	}

	/**
	 * getUserService 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public UserService getUserService() {
		return userService;
	}

	/**
	 * Set User Service 
	 *
	 * @param userService
	 * @throws java.Nullpoint.exception
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * get Facility 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public Facility getFacility() {
		return facility;
	}

	/**
	 * setFacility 
	 *
	 * @param facility
	 * @throws java.Nullpoint.exception
	 */
	public void setFacility(Facility facility) {
		this.facility = facility;
	}

	/**
	 * get Facility Service 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public FacilityService getFacilityService() {
		return facilityService;
	}

	/**
	 * set Facility Service 
	 *
	 * @param facilityService
	 * @throws java.Nullpoint.exception
	 */
	public void setFacilityService(FacilityService facilityService) {
		this.facilityService = facilityService;
	}

	/**
	 * getWind 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public Wind getWind() {
		return wind;
	}

	/**
	 * set Wind 
	 *
	 * @param wind
	 * @throws java.Nullpoint.exception
	 */
	public void setWind(Wind wind) {
		this.wind = wind;
	}

	/**
	 * getWeather 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public Weather getWeather() {
		return weather;
	}

	/**
	 * set Weather 
	 *
	 * @param weather
	 * @throws java.Nullpoint.exception
	 */
	public void setWeather(Weather weather) {
		this.weather = weather;
	}

	/**
	 * getWeatherService 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public WeatherService getWeatherService() {
		return weatherService;
	}

	/**
	 * set WeatherService 
	 *
	 * @param weatherService
	 * @throws java.Nullpoint.exception
	 */
	public void setWeatherService(WeatherService weatherService) {
		this.weatherService = weatherService;
	}

	/**
	 * this method is very important on our website, it collects all the useful information in one page such as temp, locaion based on API 
	 *
	 * @param beachid, beach ,temp, tide
	 * @throws java.Nullpoint.exception
	 */
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

	/**
	 * getBeachService 
	 *
	 * @param none
	 * @throws java.Nullpoint.exception
	 */
	public BeachService getBeachService() {
		return beachService;
	}

	/**
	 * setBeachService 
	 *
	 * @param beachService
	 * @throws java.Nullpoint.exception
	 */
	public void setBeachService(BeachService beachService) {
		this.beachService = beachService;
	}

	/**
	 * getId 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public int getId() {
		return id;
	}

	/**
	 * setId 
	 *
	 * @param id
	 * @throws java.Nullpoint.exception
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * getCurrentBeach 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public Beach getCurrentBeach() {
		return currentBeach;
	}

	/**
	 * setCurrentBeach 
	 *
	 * @param currentBeach
	 * @throws java.Nullpoint.exception
	 */
	public void setCurrentBeach(Beach currentBeach) {
		this.currentBeach = currentBeach;
	}

	/**
	 * getUserService 
	 *
	 * @param getRecommandation
	 * @throws java.Nullpoint.exception
	 */
	public Recommandation getRecommandation() {
		return recommandation;
	}

	/**
	 * setRecommandation 
	 *
	 * @param recommandation
	 * @throws java.Nullpoint.exception
	 */
	public void setRecommandation(Recommandation recommandation) {
		this.recommandation = recommandation;
	}

	/**
	 * getTideService 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public TideService getTideService() {
		return tideService;
	}

	/**
	 * setTideService 
	 *
	 * @param tideService
	 * @throws java.Nullpoint.exception
	 */
	public void setTideService(TideService tideService) {
		this.tideService = tideService;
	}

	/**
	 * getTide 
	 *
	 * @param no
	 * @throws java.Nullpoint.exception
	 */
	public Tide getTide() {
		return tide;
	}

	/**
	 * setTide 
	 *
	 * @param tide
	 * @throws java.Nullpoint.exception
	 */
	public void setTide(Tide tide) {
		this.tide = tide;
	}
}
