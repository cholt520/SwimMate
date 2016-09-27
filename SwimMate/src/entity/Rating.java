package entity;

public class Rating {
	private int id;
	private int beachId;
	private String beachName;
	private String comments;
	private String rating;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBeachId() {
		return beachId;
	}
	public void setBeachId(int beachId) {
		this.beachId = beachId;
	}
	public String getBeachName() {
		return beachName;
	}
	public void setBeachName(String beachName) {
		this.beachName = beachName;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	
	

}
