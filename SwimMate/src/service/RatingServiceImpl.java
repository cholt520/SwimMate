package service;

import java.util.List;

import dao.RatingDao;
import entity.Rating;

public class RatingServiceImpl implements RatingService{
	private RatingDao ratingDao;

	/**
	* Get all rating from database
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Rating> getAllRating() {
		return ratingDao.getAllRating();
	}

	/**
	* add rating from database
	*
	* @param rating 
	* @throws java.Nullpoint.exception
	*/
	public void addRating(Rating rating) {
		System.out.println(rating.getComments());
		System.out.println(rating.getRating());
		ratingDao.addRating(rating);
	}

	public RatingDao getRatingDao() {
		return ratingDao;
	}

	public void setRatingDao(RatingDao ratingDao) {
		this.ratingDao = ratingDao;
	}
	
	

}
