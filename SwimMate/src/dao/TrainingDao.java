package dao;

import java.util.List;

import entity.Training;

public interface TrainingDao {
	
	/**
	* Get Training By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Training getTrainingById(int id);
	
	/**
	* Get all Training
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getAllTraining();
	
	/**
	* Delete all Training
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public void deleteTraining(Training training);
	
	/**
	* Add all Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void addTraining(Training training);
	
	/**
	* Get all Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void modifyTraining(Training training);
	
	/**
	* Get Training by state
	*
	* @param state 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTrainingByState(String state);
	
	/**
	* Get Training By Postcode
	*
	* @param postcode 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTrainingByPostcode(String postcode);

}
