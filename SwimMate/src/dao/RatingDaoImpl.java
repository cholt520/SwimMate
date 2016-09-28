package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Rating;

public class RatingDaoImpl extends HibernateDaoSupport implements RatingDao{

	/**
	* Get all rating from database
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Rating> getAllRating() {
		return (List<Rating>)getHibernateTemplate().find("from Rating order by id desc");
	}

	/**
	* add rating from database
	*
	* @param rating 
	* @throws java.Nullpoint.exception
	*/
	public void addRating(Rating rating) {
		System.out.println(rating);
		getHibernateTemplate().getSessionFactory().openSession().save(rating);
	}

}
