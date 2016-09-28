package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.SharkAlarm;

public class SharkAlarmDaoImpl extends HibernateDaoSupport implements SharkAlarmDao{

	/**
	* Get All Shark Alarm from database
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<SharkAlarm> getAllSharkAlarm() {
		return (List<SharkAlarm>) getHibernateTemplate().find("from SharkAlarm");
	}

}
