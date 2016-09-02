package service;

import java.util.List;

import dao.BeachDao;
import entity.Beach;
import entity.Recommandation;

public class BeachServiceImpl implements BeachService{
	private BeachDao beachDao;

	@Override
	public List<Beach> getAllBeach() {
		return beachDao.getAllBeach();
		//sfjhskjfhsdjkh
	}

	@Override
	public Beach getBeachById(int id) {
		return beachDao.getBeachbyId(id);
	}

	@Override
	public Beach modifyBeach(Beach beach) {
		return null;
	}

	@Override
	public void deleteBeachById(int id) {		
	}

	@Override
	public List<Beach> getBeachByState(String state) {
		return null;
	}

	@Override
	public Beach getBeachByName(String beachName) {
		return beachDao.getBeachByName(beachName);
	}

	@Override
	public Recommandation getRecommandationByWaterTemp(double water_temp) {
		return null;
	}

	public BeachDao getBeachDao() {
		return beachDao;
	}

	public void setBeachDao(BeachDao beachDao) {
		this.beachDao = beachDao;
	}
	
	

}
