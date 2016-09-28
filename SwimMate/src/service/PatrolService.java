package service;

import java.util.List;

import entity.Patrol;

/**
* This interface is not implementing now,the change will be on future
*
* @param none 
* @throws java.Nullpoint.exception
*/
public interface PatrolService {
	public Patrol getPatrolDaoById(int id);
	public List<Patrol> getAllPatrol();
	public void deletePatrol(Patrol patrol);
	public void addPatrol(Patrol patrol);
	public void modifyPatrol(Patrol patrol);
}
