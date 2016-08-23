package service;

import java.util.List;

import dao.BeachDao;
import entity.Beach;

public class BeachServiceImpl implements BeachService{
	
	BeachDao beachDao;

	@Override
	public List<Beach> getAllBeach() {
		return beachDao.getAllBeach();
	}

	@Override
	public Beach getBeachById(int id) {
		Beach beach = new Beach();
		beach = beachDao.getBeachbyId(id);
		return beach;
	}

	@Override
	public Beach modifyBeach(Beach beach) {
		return null;
	}

	@Override
	public void deleteBeachById(int id) {
	}

	public BeachDao getBeachDao() {
		return beachDao;
	}

	public void setBeachDao(BeachDao beachDao) {
		this.beachDao = beachDao;
	}

	@Override
	public List<Beach> getBeachByState(String state) {
		List<Beach> beachListByState = beachDao.getBeachByState(state);
		return beachListByState;
	}

	@Override
	public Beach getBeachByName(String beachName) {
		return beachDao.getBeachByName(beachName);
	}
}
