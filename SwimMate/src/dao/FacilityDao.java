package dao;

import java.util.List;

import entity.Facility;

public interface FacilityDao {
	public Facility getFacilityDaoById(int id);
	public List<Facility> getAllFacility();
	public void deleteFacility(Facility facility);
	public void addFacility(Facility facility);
	public void modifyFacility(Facility facility);
	public List<Facility> getFacilityByName(String name);

}
