package service;

import java.util.List;

import entity.Facility;

public interface FacilityService {
	
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
	* modify Facility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void modifyFacility(Facility facility);

	/**
	* get Facility By Name
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
