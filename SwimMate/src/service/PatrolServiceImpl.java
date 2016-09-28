package service;

import java.util.List;

import dao.PatrolDao;
import entity.Patrol;

/**
* This interface is not implementing now,the change will be on future
*
* @param none 
* @throws java.Nullpoint.exception
*/
public class PatrolServiceImpl implements PatrolService {
	private PatrolDao patrolDao;

	@Override
	public Patrol getPatrolDaoById(int id) {
		return patrolDao.getPatrolDaoById(id);
	}

	@Override
	public List<Patrol> getAllPatrol() {
		return patrolDao.getAllPatrol();
	}

	@Override
	public void deletePatrol(Patrol patrol) {
		patrolDao.deletePatrol(patrol);
		
	}

	@Override
	public void addPatrol(Patrol patrol) {
		patrolDao.addPatrol(patrol);
	}

	@Override
	public void modifyPatrol(Patrol patrol) {
		patrolDao.modifyPatrol(patrol);
	}

	public PatrolDao getPatrolDao() {
		return patrolDao;
	}

	public void setPatrolDao(PatrolDao patrolDao) {
		this.patrolDao = patrolDao;
	}
	
	

}
