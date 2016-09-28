package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Beach;
import entity.Recommandation;

public class BeachDaoImpl extends HibernateDaoSupport implements BeachDao{

	/**
	* get All Beach
	*
	* @param none
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getAllBeach() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Beach>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Beach");
                query.setMaxResults(534);
                query.setFirstResult(0);
                return query.list();
            }
        });
		
	}

	/**
	* getBeachbyId
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public Beach getBeachbyId(int id) {
		return (Beach) getHibernateTemplate().find("from Beach where beach_id=" + id).get(0);
	}

	/**
	* modifyBeach
	*
	* @param beach
	* @throws java.Nullpoint.exception
	*/
	public Beach modifyBeach(Beach beach) {
		return null;
	}

	/**
	* deleteBeachById
	*
	* @param id
	* @throws java.Nullpoint.exception
	*/
	public void deleteBeachById(int id) {		
	}

	/**
	* getBeachByState
	*
	* @param state
	* @throws java.Nullpoint.exception
	*/
	public List<Beach> getBeachByState(String state) {
		return (List<Beach>) getHibernateTemplate().find("from Beach as beach where beach.state like '%" + state.toUpperCase() + "%'");
	}

	/**
	* getBeachByName
	*
	* @param beachName
	* @throws java.Nullpoint.exception
	*/
	public Beach getBeachByName(String beachName) {
		
		List<Beach> list = new ArrayList<Beach>();
		list = (List<Beach>) getHibernateTemplate().find("from Beach as beach where beach.beach_name like '%" + beachName + "%'" );		
		return list.get(0);
	}

	/**
	* getRecommandationByWaterTemp
	*
	* @param water_temp
	* @throws java.Nullpoint.exception
	*/
	public Recommandation getRecommandationByWaterTemp(int water_temp) {
		return (Recommandation) getHibernateTemplate().find("from Recommandation where water_temp="+water_temp).get(0);
	}
	

}
