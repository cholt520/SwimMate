package dao;

import java.util.List;

import entity.Training;

public interface TrainingDao {
	public Training getTrainingById(int id);
	public List<Training> getAllTraining();
	public void deleteTraining(Training training);
	public void addTraining(Training training);
	public void modifyTraining(Training training);
	

}
