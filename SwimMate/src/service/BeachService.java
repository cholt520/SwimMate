package service;

import java.util.List;

import entity.Beach;
import entity.Recommandation;

public interface BeachService {
	public List<Beach> getAllBeach();
	public Beach getBeachById(int id);
	public Beach modifyBeach(Beach beach);
	public void deleteBeachById(int id);
	public List<Beach> getBeachByState(String state);
	public Beach getBeachByName(String beachName);
    public Recommandation getRecommandationByWaterTemp(double water_temp);

    //kghslghosihgeroiwhgsojgfsighsoh
}
