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
		return beachDao.getBeachByState(state);
	}

	@Override
	public Beach getBeachByName(String beachName) {
		return beachDao.getBeachByName(beachName);
	}

	@Override
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
