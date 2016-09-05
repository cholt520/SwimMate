package service;

import java.util.List;

import entity.Training;

public interface TrainingService {
	public Training getTrainingById(int id);
	public List<Training> getAllTraining();
	public void deleteTraining(Training training);
	public void addTraining(Training training);
	public void modifyTraining(Training training);
	public List<Training> getTrainingByState(String state);
}
