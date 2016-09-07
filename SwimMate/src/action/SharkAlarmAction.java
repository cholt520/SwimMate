package action;

import service.SharkAlarmService;

import java.util.List;

import entity.SharkAlarm;

public class SharkAlarmAction {
	
	private SharkAlarmService sharkAlarmService;
	private List<SharkAlarm> sharkAlarmlist;
	
	
	
	public String execute(){
		try {
			sharkAlarmlist = sharkAlarmService.getAllSharkAlarm();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}



	public SharkAlarmService getSharkAlarmService() {
		return sharkAlarmService;
	}



	public void setSharkAlarmService(SharkAlarmService sharkAlarmService) {
		this.sharkAlarmService = sharkAlarmService;
	}



	public List<SharkAlarm> getSharkAlarmlist() {
		return sharkAlarmlist;
	}



	public void setSharkAlarmlist(List<SharkAlarm> sharkAlarmlist) {
		this.sharkAlarmlist = sharkAlarmlist;
	}
}
