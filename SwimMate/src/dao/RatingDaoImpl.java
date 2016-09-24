package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Rating;

public class RatingDaoImpl extends HibernateDaoSupport implements RatingDao{

	public List<Rating> getAllRating() {
		return (List<Rating>)getHibernateTemplate().find("from Rating order by id desc");
	}

	
	public void addRating(Rating rating) {
		getHibernateTemplate().getSessionFactory().openSession().save(rating);
	}

}
