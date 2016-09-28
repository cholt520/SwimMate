package entity;

public class Rating {
	private int id;
	private int beachId;
	private String beachName;
	private String comments;
	private String rating;
	
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
	* This is a getter which gets the beachId
	@param beachId - the beachId to be get
	*/
	public int getBeachId() {
		return beachId;
	}
	
	/**
	* This is a setter which sets the beachId
	@param beachId - the beachId to be set
	*/
	public void setBeachId(int beachId) {
		this.beachId = beachId;
	}
	
	/**
	* This is a getter which gets the beachName
	@param beachName - the beachName to be get
	*/
	public String getBeachName() {
		return beachName;
	}
	
	/**
	* This is a setter which sets the beachName
	@param beachName - the beachName to be set
	*/
	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}
	
	/**
	* This is a getter which gets the comments
	@param comments - the comments to be get
	*/
	public String getComments() {
		return comments;
	}
	
	/**
	* This is a setter which sets the comments
	@param comments - the comments to be set
	*/
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	/**
	* This is a getter which gets the rating
	@param rating - the rating to be get
	*/
	public String getRating() {
		return rating;
	}
	
	/**
	* This is a setter which sets the rating
	@param rating - the rating to be set
	*/
	public void setRating(String rating) {
		this.rating = rating;
	}
	
	

}
