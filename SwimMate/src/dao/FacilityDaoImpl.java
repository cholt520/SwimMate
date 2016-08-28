package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Facility;

public class FacilityDaoImpl extends HibernateDaoSupport implements FacilityDao {

	@Override
	public Facility getFacilityDaoById(int id) {
		return null;
	}

	@Override
	public List<Facility> getAllFacility() {
		return (List<Facility>) getHibernateTemplate().find("from Facility");
	}

	@Override
	public void deleteFacility(Facility facility) {
		
	}

	@Override
	public void addFacility(Facility facility) {		
	}

	@Override
	public void modifyFacility(Facility facility) {		
	}

}
