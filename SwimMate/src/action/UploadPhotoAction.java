package action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;

public class UploadPhotoAction {
	private File myFile;
	private String uploadContentType;
	private String uploadFileName;
	private HttpServletRequest servletRequest;

	public String execute() {
		/* Copy file to a safe location */
		String destPath = "/Users/junwang/git/SwimMate/SwimMate/WebRoot/photo";

		try {
			System.out.println("Src File name: " + myFile);
			System.out.println("Dst File name: " + uploadFileName);

			File theFile = new File(this.getUploadFileName());
			FileUtils.copyFile(myFile, theFile);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "success";
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

}
