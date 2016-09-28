package dao;

import java.util.List;

import entity.Patrol;
import entity.Training;

/**
* This interface is not implementing now,the change will be on future
*
* @param none 
* @throws java.Nullpoint.exception
*/
public interface PatrolDao {
	
	public Patrol getPatrolDaoById(int id);
	public List<Patrol> getAllPatrol();
	public void deletePatrol(Patrol patrol);
	public void addPatrol(Patrol patrol);
	public void modifyPatrol(Patrol patrol);

}
