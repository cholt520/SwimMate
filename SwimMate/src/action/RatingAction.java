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

	
	public String execute(){
		ratingList = ratingService.getAllRating();
		return "success";
	}
	
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

	public RatingService getRatingService() {
		return ratingService;
	}

	public void setRatingService(RatingService ratingService) {
		this.ratingService = ratingService;
	}

	public List<Rating> getRatingList() {
		return ratingList;
	}

	public void setRatingList(List<Rating> ratingList) {
		this.ratingList = ratingList;
	}

	public Rating getRating() {
		return rating;
	}

	public void setRating(Rating rating) {
		this.rating = rating;
	}

	public String getRatingnumber() {
		return ratingnumber;
	}

	public void setRatingnumber(String ratingnumber) {
		this.ratingnumber = ratingnumber;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getBeachId() {
		return beachId;
	}

	public void setBeachId(String beachId) {
		this.beachId = beachId;
	}

	public String getBeachName() {
		return beachName;
	}

	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	
}
