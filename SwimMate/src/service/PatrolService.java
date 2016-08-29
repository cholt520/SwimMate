package service;

import java.util.List;

import entity.Patrol;

public interface PatrolService {
	public Patrol getPatrolDaoById(int id);
	public List<Patrol> getAllPatrol();
	public void deletePatrol(Patrol patrol);
	public void addPatrol(Patrol patrol);
	public void modifyPatrol(Patrol patrol);
	//dkfjghfjhgdjkfgdfkh
}
