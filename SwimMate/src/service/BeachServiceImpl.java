package service;

import java.util.List;

import dao.BeachDao;
import entity.Beach;
import entity.Recommandation;

public class BeachServiceImpl implements BeachService{
	private BeachDao beachDao;

	/**
	* get All Beach
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getAllBeach() {
		return beachDao.getAllBeach();
	}

	/**
	* get Beach by Id
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Beach getBeachById(int id) {
		return beachDao.getBeachbyId(id);
	}

	/**
	* Change Beach
	*
	* @param beach
	* @throws java.Nullpoint.exception
	*/
	public Beach modifyBeach(Beach beach) {
		return null;
	}

	/**
	* delete Beach By Id
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public void deleteBeachById(int id) {		
	}

	/**
	* get Beach By State 
	*
	* @param state
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getBeachByState(String state) {
		return beachDao.getBeachByState(state);
	}

	/**
	* get Beach By name
	*
	* @param beachName
	* @throws java.Nullpoint.exception
	*/
	public Beach getBeachByName(String beachName) {
		return beachDao.getBeachByName(beachName);
	}

	/**
	* get Recommandation By WaterTemp
	*
	* @param water_temp
	* @throws java.Nullpoint.exception
	*/
	public Recommandation getRecommandationByWaterTemp(double water_temp) {
		
		int watertemp = 0;
		
		if(water_temp<0){
			watertemp = 0;
		} else if (water_temp>0&&water_temp<8){
			watertemp = 8;
		} else if (water_temp>=8&&water_temp<13){
			watertemp = 13;
		} else if (water_temp>=13&&water_temp<16){
			watertemp = 16;
		}else if (water_temp>=16&&water_temp<19){
			watertemp = 19;
		}else if (water_temp>=19&&water_temp<22){
			watertemp = 22;
		}else if (water_temp>=22&&water_temp<26){
			watertemp = 26;
		}else if (water_temp>=26){
			watertemp = 26;
		}
		
		return beachDao.getRecommandationByWaterTemp(watertemp);
	}

	public BeachDao getBeachDao() {
		return beachDao;
	}

	public void setBeachDao(BeachDao beachDao) {
		this.beachDao = beachDao;
	}
	
	

}
