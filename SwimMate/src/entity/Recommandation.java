package entity;

public class Recommandation {
	private int id;
	
	private int water_temp;
	
	private String recommandation;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getWater_temp() {
		return water_temp;
	}
	public void setWater_temp(int water_temp) {
		this.water_temp = water_temp;
	}
	public String getRecommandation() {
		return recommandation;
	}
	public void setRecommandation(String recommandation) {
		this.recommandation = recommandation;
	}

}
