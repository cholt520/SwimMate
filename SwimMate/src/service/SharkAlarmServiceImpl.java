package service;

import java.util.List;

import dao.SharkAlarmDao;
import entity.SharkAlarm;

public class SharkAlarmServiceImpl implements SharkAlarmService{
	private SharkAlarmDao sharkAlarmDao;

	/**
	* Get All Shark Alarm 
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<SharkAlarm> getAllSharkAlarm() {
		return sharkAlarmDao.getAllSharkAlarm();
	}

	public SharkAlarmDao getSharkAlarmDao() {
		return sharkAlarmDao;
	}

	public void setSharkAlarmDao(SharkAlarmDao sharkAlarmDao) {
		this.sharkAlarmDao = sharkAlarmDao;
	}
	
	

}
