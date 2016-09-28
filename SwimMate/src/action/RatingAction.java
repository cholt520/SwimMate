package action;

import service.RatingService;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import entity.Rating;
import net.sf.json.JSONObject;

public class RatingAction {
	private String ratingnumber;
	private String comments;
	private String beachId;
	private String beachName;
	private RatingService ratingService;
	public List<Rating> ratingList = new ArrayList<Rating>();
	private Rating rating;
	private String result;
	private InputStream inputStream;

	
	/**
	* get all rating from database and then show them on the relevant beach page 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String execute(){
		ratingList = ratingService.getAllRating();
		return "success";
	}
	
	/**
	* The swimmer will judge the beach and then store this judgement to database. 
	* The return will be json.  
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String addRating(){
		rating = new Rating();
		rating.setComments(comments);
		rating.setRating(ratingnumber);
		rating.setBeachId(Integer.parseInt(beachId));
		rating.setBeachName(beachName);
		ratingService.addRating(rating);
		
		ratingList = ratingService.getAllRating();
		String result = new Gson().toJson(ratingList);	
		inputStream = new ByteArrayInputStream(result.getBytes(StandardCharsets.UTF_8));
		System.out.println(result);
		return "success";
	}

	/**
	* getRatingService 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public RatingService getRatingService() {
		return ratingService;
	}

	/**
	* setRatingService 
	*
	* @param ratingService
	* @throws java.Nullpoint.exception
	*/
	public void setRatingService(RatingService ratingService) {
		this.ratingService = ratingService;
	}

	/**
	* getRatingList 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Rating> getRatingList() {
		return ratingList;
	}

	/**
	* setRatingList 
	*
	* @param ratingList
	* @throws java.Nullpoint.exception
	*/
	public void setRatingList(List<Rating> ratingList) {
		this.ratingList = ratingList;
	}

	/**
	* getRating 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public Rating getRating() {
		return rating;
	}

	/**
	* setRating 
	*
	* @param rating
	* @throws java.Nullpoint.exception
	*/
	public void setRating(Rating rating) {
		this.rating = rating;
	}

	/**
	* getRatingnumber 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getRatingnumber() {
		return ratingnumber;
	}

	/**
	* setRatingnumber 
	*
	* @param ratingnumber
	* @throws java.Nullpoint.exception
	*/
	public void setRatingnumber(String ratingnumber) {
		this.ratingnumber = ratingnumber;
	}

	/**
	* getComments 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getComments() {
		return comments;
	}

	/**
	* setComments 
	*
	* @param comments
	* @throws java.Nullpoint.exception
	*/
	public void setComments(String comments) {
		this.comments = comments;
	}

	/**
	* getBeachId 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getBeachId() {
		return beachId;
	}

	/**
	* setBeachId 
	*
	* @param beachId
	* @throws java.Nullpoint.exception
	*/
	public void setBeachId(String beachId) {
		this.beachId = beachId;
	}

	/**
	* getBeachName 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getBeachName() {
		return beachName;
	}

	/**
	* setBeachName 
	*
	* @param beachName
	* @throws java.Nullpoint.exception
	*/
	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	/**
	* getResult 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String getResult() {
		return result;
	}

	/**
	* setResult 
	*
	* @param result
	* @throws java.Nullpoint.exception
	*/
	public void setResult(String result) {
		this.result = result;
	}

	/**
	* getInputStream 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public InputStream getInputStream() {
		return inputStream;
	}

	/**
	* setInputStream 
	*
	* @param inputStream
	* @throws java.Nullpoint.exception
	*/
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	
}
