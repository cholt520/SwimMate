package action;

import service.FacilityService;

public class FacilityAction {
		private FacilityService facilityService;
		
		public String execute(){
			try {
				facilityService.getAllFacility();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		}

		public FacilityService getFacilityService() {
			return facilityService;
		}

		public void setFacilityService(FacilityService facilityService) {
			this.facilityService = facilityService;
		}
		
		
}
