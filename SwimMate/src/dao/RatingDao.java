package dao;

import java.util.List;

import entity.Rating;

public interface RatingDao {
	public List<Rating> getAllRating();
	public void addRating(Rating rating);

}
