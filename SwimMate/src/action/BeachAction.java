package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ModelDriven;

import entity.Beach;
import service.BeachService;

public class BeachAction implements ModelDriven{
	
private static final long serialVersionUID = 1L;
	
	Beach beach = new Beach();
	List<Beach> beachList = new ArrayList<Beach>();
	BeachService beachService;
	private String selectedState = "";
	private String beachName = "";

	public String getBeachName() {
		return beachName;
	}

	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}

	@Override
	public Object getModel() {
		return null;
	}

	public BeachService getBeachService() {
		return beachService;
	}

	public void setBeachService(BeachService beachService) {
		this.beachService = beachService;
	}

	public List<Beach> getBeachList() {
		return beachList;
	}

	public void setBeachList(ArrayList<Beach> beachList) {
		this.beachList = beachList;
	}
	
	public String getState()
	{
		return selectedState;
	}
	
	public void setState(String selectedState)
	{
		this.selectedState = selectedState;
	}

	public String execute(){
		try {
			beachList = beachService.getAllBeach();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	public String getBeachByState() {
		try {
			beachList = beachService.getBeachByState(selectedState);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	public String getBeachByName() {
		try {
			Beach newBeach = beachService.getBeachByName(beachName);
			beachList.clear();
			beachList.add(newBeach);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String getSelectedState() {
		return selectedState;
	}

	public void setSelectedState(String selectedState) {
		this.selectedState = selectedState;
	}
	
	
}
