package action;

import java.util.List;

import entity.Facility;
import service.FacilityService;

public class FacilityAction {
		private FacilityService facilityService;
		
		private List<Facility> facilitiesList;
		
		private String facilityName = "";
		
		public String execute(){
			try {
				facilitiesList = facilityService.getAllFacility();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		}
		
		public String getFacility(){
			facilitiesList = facilityService.getFacilityByName(facilityName);
			return "success";
		}

		public FacilityService getFacilityService() {
			return facilityService;
		}

		public void setFacilityService(FacilityService facilityService) {
			this.facilityService = facilityService;
		}

		public List<Facility> getFacilitiesList() {
			return facilitiesList;
		}

		public void setFacilitiesList(List<Facility> facilitiesList) {
			this.facilitiesList = facilitiesList;
		}

		public String getFacilityName() {
			return facilityName;
		}

		public void setFacilityName(String facilityName) {
			this.facilityName = facilityName;
		}
		
}
