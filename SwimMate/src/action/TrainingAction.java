package action;

import service.TrainingService;

import java.util.List;

import entity.Training;

public class TrainingAction {
	private TrainingService trainingService;
	private List<Training> traininglist;
	private String state;
	
	
	public String execute(){
		try {
			traininglist = trainingService.getAllTraining();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	public String getTrainingByState(){
		
		traininglist = trainingService.getTrainingByState(state);
		
		return "success";
	}
	
	public TrainingService getTrainingService() {
		return trainingService;
	}

	public void setTrainingService(TrainingService trainingService) {
		this.trainingService = trainingService;
	}

	public List<Training> getTraininglist() {
		return traininglist;
	}

	public void setTraininglist(List<Training> traininglist) {
		this.traininglist = traininglist;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
