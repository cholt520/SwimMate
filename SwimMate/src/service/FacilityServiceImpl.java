package service;

import java.util.List;

import dao.FacilityDao;
import entity.Facility;

public class FacilityServiceImpl implements FacilityService{
	private FacilityDao facilityDao;

	@Override
	public Facility getFacilityDaoById(int id) {
		return null;
	}

	@Override
	public List<Facility> getAllFacility() {
		return facilityDao.getAllFacility();
	}

	@Override
	public void deleteFacility(Facility facility) {
		
	}

	@Override
	public void addFacility(Facility facility) {
		
	}

	@Override
	public void modifyFacility(Facility facility) {		
	}

	public FacilityDao getFacilityDao() {
		return facilityDao;
	}

	public void setFacilityDao(FacilityDao facilityDao) {
		this.facilityDao = facilityDao;
	}

	@Override
	public List<Facility> getFacilityByName(String name) {
		return facilityDao.getFacilityByName(name);
	}

	@Override
	public Facility findFacilityByBeachID(int id) {
		return facilityDao.findFacilityByBeachID(id);
	}

}
