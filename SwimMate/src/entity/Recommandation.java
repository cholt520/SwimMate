package entity;

public class Recommandation {
	private int id;
	private int water_temp;
	private String recommandation;
	
	/**
	* This is a getter which gets the id
	@param id - the id to be get
	*/
	public int getId() {
		return id;
	}
	
	/**
	* This is a setter which sets the id
	@param id - the id to be set
	*/
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	* This is a getter which gets the water_temp
	@param water_temp - the id to be get
	*/
	public int getWater_temp() {
		return water_temp;
	}
	
	/**
	* This is a setter which sets the water_temp
	@param water_temp - the water_temp to be set
	*/
	public void setWater_temp(int water_temp) {
		this.water_temp = water_temp;
	}
	
	/**
	* This is a getter which gets the recommandation
	@param recommandation - the recommandation to be get
	*/
	public String getRecommandation() {
		return recommandation;
	}
	
	/**
	* This is a setter which sets the recommandation
	@param recommandation - the recommandation to be set
	*/
	public void setRecommandation(String recommandation) {
		this.recommandation = recommandation;
	}

}
