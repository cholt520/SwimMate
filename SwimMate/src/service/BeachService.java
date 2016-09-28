package service;

import java.util.List;

import entity.Beach;
import entity.Recommandation;

public interface BeachService {
	
	/**
	* get All Beach
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getAllBeach();
	
	/**
	* get Beach by Id
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Beach getBeachById(int id);
	
	/**
	* Change Beach
	*
	* @param beach
	* @throws java.Nullpoint.exception
	*/
	public Beach modifyBeach(Beach beach);
	
	/**
	* delete Beach By Id
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public void deleteBeachById(int id);
	
	/**
	* get Beach By State 
	*
	* @param state
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getBeachByState(String state);
	
	/**
	* get Beach By name
	*
	* @param beachName
	* @throws java.Nullpoint.exception
	*/
	public Beach getBeachByName(String beachName);
	
	/**
	* get Recommandation By WaterTemp
	*
	* @param water_temp
	* @throws java.Nullpoint.exception
	*/
    public Recommandation getRecommandationByWaterTemp(double water_temp);
}
