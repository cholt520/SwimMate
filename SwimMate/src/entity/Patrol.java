package entity;

public class Patrol {
	private int id;
	private String hazards;
	private String service_provider;
	
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
	* This is a getter which gets the toilet
	@param toilet - the toilet to be get
	*/
	public String getHazards() {
		return hazards;
	}
	
	/**
	* This is a setter which sets the hazards
	@param hazards - the hazards to be set
	*/
	public void setHazards(String hazards) {
		this.hazards = hazards;
	}
	
	/**
	* This is a getter which gets the service_provider
	@param service_provider - the service_provider to be get
	*/
	public String getService_provider() {
		return service_provider;
	}
	
	/**
	* This is a setter which sets the service_provider
	@param service_provider - the service_provider to be set
	*/
	public void setService_provider(String service_provider) {
		this.service_provider = service_provider;
	}
	
	

}
