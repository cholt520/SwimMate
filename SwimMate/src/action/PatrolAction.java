package action;

import service.PatrolService;

public class PatrolAction {
	private PatrolService patrolService;
	
	public String execute(){
		try {
			patrolService.getAllPatrol();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public PatrolService getPatrolService() {
		return patrolService;
	}

	public void setPatrolService(PatrolService patrolService) {
		this.patrolService = patrolService;
	}

}
