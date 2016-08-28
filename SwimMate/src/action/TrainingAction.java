package action;

import service.TrainingService;

public class TrainingAction {
	private TrainingService trainingService;
	
	public String execute(){
		try {
			trainingService.getAllTraining();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	

	public TrainingService getTrainingService() {
		return trainingService;
	}

	public void setTrainingService(TrainingService trainingService) {
		this.trainingService = trainingService;
	}
	
	

}
