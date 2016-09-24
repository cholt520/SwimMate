package action;

import service.RatingService;

import java.util.ArrayList;
import java.util.List;

import entity.Rating;

public class RatingAction {
	private RatingService ratingService;
	public List<Rating> ratingList = new ArrayList<Rating>();
	private Rating rating;
	
	public String execute(){
		ratingList = ratingService.getAllRating();
		return "success";
	}
	
	public String addRating(){
		ratingService.addRating(rating);
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
	
	
	
}
