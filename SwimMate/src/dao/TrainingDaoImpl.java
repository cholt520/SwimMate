package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Facility;
import entity.Training;

public class TrainingDaoImpl extends HibernateDaoSupport implements TrainingDao{

	/**
	* Get Training By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Training getTrainingById(int id) {
		return null;
	}

	/**
	* Get all Training
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getAllTraining() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Training>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Training");
                query.setMaxResults(500);
                query.setFirstResult(0);
                return query.list();
            }
        });
	}

	/**
	* Delete all Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void deleteTraining(Training training) {
		
	}

	/**
	* Add all Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void addTraining(Training training) {		
	}

	/**
	* Change Training
	*
	* @param training 
	* @throws java.Nullpoint.exception
	*/
	public void modifyTraining(Training training) {		
	}

	/**
	* Get Training by state
	*
	* @param state 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTrainingByState(String state) {
		return (List<Training>)getHibernateTemplate().find("from Training as training where training.state like '%" + state + "%'");
		
	}

	/**
	* Get Training By Postcode
	*
	* @param postcode 
	* @throws java.Nullpoint.exception
	*/
	public List<Training> getTrainingByPostcode(String postcode) {
		return (List<Training>)getHibernateTemplate().find("from Training as training where training.postcode like '%" + postcode + "%'");
	}

}
