package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.SharkAlarm;

public class SharkAlarmDaoImpl extends HibernateDaoSupport implements SharkAlarmDao{

	@Override
	public List<SharkAlarm> getAllSharkAlarm() {
		return (List<SharkAlarm>) getHibernateTemplate().find("from SharkAlarm");
	}

}
