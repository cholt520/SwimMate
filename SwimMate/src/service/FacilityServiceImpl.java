package service;

import java.util.List;

import dao.FacilityDao;
import entity.Facility;

public class FacilityServiceImpl implements FacilityService{
	private FacilityDao facilityDao;

	/**
	* getFacilityDaoById
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Facility getFacilityDaoById(int id) {
		return null;
	}

	/**
	* getAllFacility
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getAllFacility() {
		return facilityDao.getAllFacility();
	}

	/**
	* deleteFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void deleteFacility(Facility facility) {
		
	}

	/**
	* addFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void addFacility(Facility facility) {
		
	}

	/**
	* modify Facility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void modifyFacility(Facility facility) {		
	}

	
	public FacilityDao getFacilityDao() {
		return facilityDao;
	}

	public void setFacilityDao(FacilityDao facilityDao) {
		this.facilityDao = facilityDao;
	}

	/**
	* get Facility By Name
	*
	* @param name
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getFacilityByName(String name) {
		return facilityDao.getFacilityByName(name);
	}

	/**
	* findFacilityByBeachID
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Facility findFacilityByBeachID(int id) {
		return facilityDao.findFacilityByBeachID(id);
	}

	/**
	* getBeachByFacility
	*
	* @param selectedFacility
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getBeachByFacility(String selectedFacility) {
		return facilityDao.getBeachByFacility(selectedFacility);
	}

}
