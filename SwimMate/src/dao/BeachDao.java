package dao;

import java.util.List;

import entity.Beach;
import entity.Recommandation;

public interface BeachDao {
	
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
	public Beach getBeachbyId(int id);
	
	/**
	* getBeachByState
	*
	* @param state
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getBeachByState(String state);
	
	/**
	* modifyBeach
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
	* getBeachByName
	*
	* @param beachName
	* @throws java.Nullpoint.exception
	*/
    public Beach getBeachByName(String beachName);
    
    /**
	* getRecommandationByWaterTemp
	*
	* @param water_temp
	* @throws java.Nullpoint.exception
	*/
    public Recommandation getRecommandationByWaterTemp(int water_temp);
}
