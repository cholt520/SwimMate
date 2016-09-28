package dao;

import java.util.List;

import entity.Facility;

public interface FacilityDao {
	
	/**
	* getFacilityDaoById
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Facility getFacilityDaoById(int id);
	
	/**
	* getAllFacility
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getAllFacility();
	
	/**
	* deleteFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void deleteFacility(Facility facility);
	
	/**
	* addFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void addFacility(Facility facility);
	
	/**
	* modifyFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void modifyFacility(Facility facility);
	
	/**
	* getFacilityByName
	*
	* @param name
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getFacilityByName(String name);
	
	/**
	* findFacilityByBeachID
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
    public Facility findFacilityByBeachID(int id);
    
    /**
	* getBeachByFacility
	*
	* @param selectedFacility
	* @throws java.Nullpoint.exception
	*/
    public List<Facility> getBeachByFacility(String selectedFacility);
}
