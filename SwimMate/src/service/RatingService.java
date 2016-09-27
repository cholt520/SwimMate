package service;

import java.util.List;

import entity.Rating;

public interface RatingService {
	public List<Rating> getAllRating();
	public void addRating(Rating rating);
}
