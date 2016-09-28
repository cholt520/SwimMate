package dao;

import java.util.List;

import entity.SharkAlarm;

public interface SharkAlarmDao {
	/**
	* Get All Shark Alarm from database
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<SharkAlarm> getAllSharkAlarm();

}
