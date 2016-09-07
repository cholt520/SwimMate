package service;

import java.util.List;

import dao.SharkAlarmDao;
import entity.SharkAlarm;

public class SharkAlarmServiceImpl implements SharkAlarmService{
	private SharkAlarmDao sharkAlarmDao;

	@Override
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
