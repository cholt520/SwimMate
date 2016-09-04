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

	@Override
	public Facility getFacilityDaoById(int id) {
		return null;
	}

	@Override
	public List<Facility> getAllFacility() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Facility>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Facility");
                query.setMaxResults(10);
                query.setFirstResult(0);
                return query.list();
            }
        });
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

	@Override
	public List<Facility> getFacilityByName(String name) {
		return (List<Facility>)getHibernateTemplate().find("from Facility as facility where facility.name like '%" + name + "%'");
	}

	@Override
	public Facility findFacilityByBeachID(int id) {
		return (Facility) getHibernateTemplate().find("from Facility where id=" + id).get(0);
	}

}
