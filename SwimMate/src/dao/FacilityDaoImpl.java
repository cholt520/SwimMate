package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Beach;
import entity.Facility;

public class FacilityDaoImpl extends HibernateDaoSupport implements FacilityDao {

	/**
	* getFacilityDaoById
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Facility getFacilityDaoById(int id) {
		return null;
	}

	/**
	* getAllFacility
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getAllFacility() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Facility>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Facility");
                query.setMaxResults(534);
                query.setFirstResult(0);
                return query.list();
            }
        });
	}

	/**
	* deleteFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void deleteFacility(Facility facility) {
		
	}

	/**
	* addFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void addFacility(Facility facility) {		
	}

	/**
	* modifyFacility
	*
	* @param facility
	* @throws java.Nullpoint.exception
	*/
	public void modifyFacility(Facility facility) {		
	}

	/**
	* getFacilityByName
	*
	* @param name
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getFacilityByName(String name) {
		return (List<Facility>)getHibernateTemplate().find("from Facility as facility where facility.name like '%" + name + "%'");
	}
	
	

	/**
	* findFacilityByBeachID
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Facility findFacilityByBeachID(int id) {
		return (Facility) getHibernateTemplate().find("from Facility where id=" + id).get(0);
	}

	/**
	* getBeachByFacility
	*
	* @param selectedFacility
	* @throws java.Nullpoint.exception
	*/
	public List<Facility> getBeachByFacility(String selectedFacility) {
		return (List<Facility>)getHibernateTemplate().find("from Facility as facility where facility." + selectedFacility + " like '%YES%'");
	}

}
