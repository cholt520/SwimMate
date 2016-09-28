package action;

import service.PatrolService;

public class PatrolAction {
	private PatrolService patrolService;
	
	/**
	* not implements for future  
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public String execute(){
		try {
			patrolService.getAllPatrol();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	* getPatrolService 
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public PatrolService getPatrolService() {
		return patrolService;
	}

	/**
	* setPatrolService 
	*
	* @param patrolService
	* @throws java.Nullpoint.exception
	*/
	public void setPatrolService(PatrolService patrolService) {
		this.patrolService = patrolService;
	}

}
