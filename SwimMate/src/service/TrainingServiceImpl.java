package service;

import java.util.List;

import dao.TrainingDao;
import entity.Training;

public class TrainingServiceImpl implements TrainingService{
	
	private TrainingDao trainingDao;

	@Override
	public Training getTrainingById(int id) {
		return trainingDao.getTrainingById(id);
	}

	@Override
	public List<Training> getAllTraining() {
		return trainingDao.getAllTraining();
	}

	@Override
	public void deleteTraining(Training training) {
	}

	@Override
	public void addTraining(Training training) {
	}

	@Override
	public void modifyTraining(Training training) {		
	}

	public TrainingDao getTrainingDao() {
		return trainingDao;
	}

	public void setTrainingDao(TrainingDao trainingDao) {
		this.trainingDao = trainingDao;
	}
	
	

}
