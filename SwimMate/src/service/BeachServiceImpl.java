package service;

import java.util.List;

import dao.BeachDao;
import entity.Beach;
import entity.Recommandation;

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
           System.out.println("dsjhfkshf");
           System.out.println("dsjhfkshf");

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

	@Override
	public Recommandation getRecommandationByWaterTemp(double water_temp) {
		
		int waterTemp = 0;
		
		if(water_temp<0){
			waterTemp = 0;	
		}else if(water_temp>0&&water_temp<8){
			waterTemp = 8;
		}else if(water_temp>8&&water_temp<13){
			waterTemp = 13;
		}else if(water_temp>13&&water_temp<16){
			waterTemp = 16;
		}else if(water_temp>16&&water_temp<19){
			waterTemp = 19;
		}else if(water_temp>19&&water_temp<22){
			waterTemp = 22;
		}else if(water_temp>22&&water_temp<26){
			waterTemp = 26;
		}
		
		return beachDao.getRecommandationByWaterTemp(waterTemp);
	}
}