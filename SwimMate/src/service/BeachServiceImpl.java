package service;

import java.util.List;

import dao.BeachDao;
import entity.Beach;
import entity.Recommandation;

public class BeachServiceImpl implements BeachService{
	private BeachDao beachDao;

	@Override
	public List<Beach> getAllBeach() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach getBeachById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach modifyBeach(Beach beach) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteBeachById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Beach> getBeachByState(String state) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Beach getBeachByName(String beachName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Recommandation getRecommandationByWaterTemp(double water_temp) {
		// TODO Auto-generated method stub
		return null;
	}

	public BeachDao getBeachDao() {
		return beachDao;
	}

	public void setBeachDao(BeachDao beachDao) {
		this.beachDao = beachDao;
	}
	
	

}
