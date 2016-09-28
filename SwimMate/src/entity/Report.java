package entity;

public class Report {
	
	private int id;
	private String beachName;
	private String submittedName;
	private String reason;
	private String description;
	private String fileUploadContentType;
	private String fileUploadFileName;
	private String fileUpload;
	
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
	* This is a getter which gets the submittedName
	@param submittedName - the submittedName to be get
	*/
	public String getSubmittedName() {
		return submittedName;
	}
	
	/**
	* This is a setter which sets the submittedName
	@param submittedName - the submittedName to be set
	*/
	public void setSubmittedName(String submittedName) {
		this.submittedName = submittedName;
	}
	
	/**
	* This is a getter which gets the reason
	@param reason - the reason to be get
	*/
	public String getReason() {
		return reason;
	}
	
	/**
	* This is a setter which sets the reason
	@param reason - the reason to be set
	*/
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	/**
	* This is a getter which gets the description
	@param description - the description to be get
	*/
	public String getDescription() {
		return description;
	}
	
	/**
	* This is a setter which sets the description
	@param description - the description to be set
	*/
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	* This is a getter which gets the fileUploadContentType
	@param fileUploadContentType - the fileUploadContentType to be get
	*/
	public String getFileUploadContentType() {
		return fileUploadContentType;
	}
	
	/**
	* This is a setter which sets the fileUploadContentType
	@param fileUploadContentType - the fileUploadContentType to be set
	*/
	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}
	
	/**
	* This is a getter which gets the fileUploadFileName
	@param fileUploadFileName - the fileUploadFileName to be get
	*/
	public String getFileUploadFileName() {
		return fileUploadFileName;
	}
	
	/**
	* This is a setter which sets the fileUploadFileName
	@param fileUploadFileName - the fileUploadFileName to be set
	*/
	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}
	
	/**
	* This is a getter which gets the fileUpload
	@param fileUpload - the fileUpload to be get
	*/
	public String getFileUpload() {
		return fileUpload;
	}
	
	/**
	* This is a setter which sets the fileUpload
	@param fileUpload - the fileUpload to be set
	*/
	public void setFileUpload(String fileUpload) {
		this.fileUpload = fileUpload;
	}
}
