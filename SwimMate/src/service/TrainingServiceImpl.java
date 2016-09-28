package service;

import java.util.List;

import dao.TrainingDao;
import entity.Training;

public class TrainingServiceImpl implements TrainingService{
	
	private TrainingDao trainingDao;

	/**
	* Get Training By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Training getTrainingById(int id) {
		return trainingDao.getTrainingById(id);
	}

	/**
	* Get all Training
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getAllTraining() {
		return trainingDao.getAllTraining();
	}

	/**
	* Delete all Training
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public void deleteTraining(Training training) {
	}

	/**
	* Add all Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void addTraining(Training training) {
	}

	/**
	* change Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void modifyTraining(Training training) {		
	}

	public TrainingDao getTrainingDao() {
		return trainingDao;
	}

	public void setTrainingDao(TrainingDao trainingDao) {
		this.trainingDao = trainingDao;
	}

	/**
	* Get Training by state
	*
	* @param state 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTrainingByState(String state) {
		return trainingDao.getTrainingByState(state);
	}

	/**
	* Get Training By Postcode
	*
	* @param postcode 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTrainingByPostcode(String postcode) {
		return trainingDao.getTrainingByPostcode(postcode);
	}
	
	

}
