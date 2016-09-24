package service;

import java.util.List;

import dao.RatingDao;
import entity.Rating;

public class RatingServiceImpl implements RatingService{
	private RatingDao ratingDao;

	public List<Rating> getAllRating() {
		return ratingDao.getAllRating();
	}

	public void addRating(Rating rating) {
		ratingDao.addRating(rating);
	}

	public RatingDao getRatingDao() {
		return ratingDao;
	}

	public void setRatingDao(RatingDao ratingDao) {
		this.ratingDao = ratingDao;
	}
	
	

}
