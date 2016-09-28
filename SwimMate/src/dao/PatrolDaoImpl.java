package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Patrol;
import entity.Training;

/**
* This interface is not implementing now,the change will be on future
*
* @param none 
* @throws java.Nullpoint.exception
*/
public class PatrolDaoImpl extends HibernateDaoSupport implements PatrolDao {

	@Override
	public Patrol getPatrolDaoById(int id) {
		return null;
	}

	@Override
	public List<Patrol> getAllPatrol() {
		return (List<Patrol>)getHibernateTemplate().find("from Patrol");
	}

	@Override
	public void deletePatrol(Patrol patrol) {
	}

	@Override
	public void addPatrol(Patrol patrol) {		
	}

	@Override
	public void modifyPatrol(Patrol patrol) {		
	}

}
