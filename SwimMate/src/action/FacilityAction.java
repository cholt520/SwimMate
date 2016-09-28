package action;

import java.util.List;

import entity.Facility;
import service.FacilityService;

public class FacilityAction{
		private FacilityService facilityService;
		
		private List<Facility> facilitiesList;
		private String selectedFacility = "";
		private String facilityName = "";
		
		/**
		 * getSelectedFacility 
		 *
		 * @param none
		 * @throws java.Nullpoint.exception
		 */
		public String getSelectedFacility() {
			return selectedFacility;
		}

		/**
		 * setSelectedFacility 
		 *
		 * @param selectedFacility
		 * @throws java.Nullpoint.exception
		 */
		public void setSelectedFacility(String selectedFacility) {
			this.selectedFacility = selectedFacility;
		}
		
		/**
		 *  get All Facility to list and display it on facility.jsp page
		 *
		 * @param none
		 * @throws java.Nullpoint.exception
		 */
		public String execute(){
			try {
				facilitiesList = facilityService.getAllFacility();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		}
		
		/**
		 * get All Facility to list and display it on facility.jsp page 
		 *
		 * @param none
		 * @throws java.Nullpoint.exception
		 */
		public String getFacility(){
			try {
				facilitiesList = facilityService.getAllFacility();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		}

		/**
		 * Find Beach By Facility 
		 *
		 * @param selectedFacility
		 * @throws java.Nullpoint.exception
		 */
		public String findBeachByFacility() {
			try {
				facilitiesList = facilityService.getBeachByFacility(selectedFacility);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		}
		
		/**
		 * getFacilityService 
		 *
		 * @param none
		 * @throws java.Nullpoint.exception
		 */
		public FacilityService getFacilityService() {
			return facilityService;
		}

		/**
		 * setFacilityService 
		 *
		 * @param facilityService
		 * @throws java.Nullpoint.exception
		 */
		public void setFacilityService(FacilityService facilityService) {
			this.facilityService = facilityService;
		}

		/**
		 * getFacilitiesList 
		 *
		 * @param none
		 * @throws java.Nullpoint.exception
		 */
		public List<Facility> getFacilitiesList() {
			return facilitiesList;
		}

		/**
		 * set Facilities List 
		 *
		 * @param facilitiesList
		 * @throws java.Nullpoint.exception
		 */
		public void setFacilitiesList(List<Facility> facilitiesList) {
			this.facilitiesList = facilitiesList;
		}

		/**
		 * getFacilityName 
		 *
		 * @param none
		 * @throws java.Nullpoint.exception
		 */
		public String getFacilityName() {
			return facilityName;
		}

		/**
		 * setFacilityName 
		 *
		 * @param facilityName
		 * @throws java.Nullpoint.exception
		 */
		public void setFacilityName(String facilityName) {
			this.facilityName = facilityName;
		}
		
}
