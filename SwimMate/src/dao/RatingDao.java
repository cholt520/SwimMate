package dao;

import java.util.List;

import entity.Rating;

public interface RatingDao {
	
	/**
	* Get all rating from database
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Rating> getAllRating();
	
	/**
	* add rating from database
	*
	* @param rating 
	* @throws java.Nullpoint.exception
	*/
	public void addRating(Rating rating);

}
