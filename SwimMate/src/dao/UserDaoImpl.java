package dao;

import java.util.List;


import org.hibernate.FlushMode;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import entity.User;

@Transactional
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	
	/**
	* Get User By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public User getUserById(int id) {
		return (User) getHibernateTemplate().find("from User where user_id=" + id).get(0);
	}

	/**
	* Get all Users
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<User> getAllUser() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<User>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from User");
                query.setMaxResults(500);
                query.setFirstResult(0);
                return query.list();
            }
        });
	}
	
	/**
	* Delete User
	*
	* @param user 
	* @throws java.Nullpoint.exception
	*/
	public void deleteUser(User user) {		
	}

	/**
	* Add User
	*
	* @param user 
	* @throws java.Nullpoint.exception
	*/
	@Transactional
	public void addUser(User user) {
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.setFlushMode(FlushMode.AUTO);
		s.save(user);
	}

	/**
	* Change User
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	@Transactional
	public void modifyUser(User user) {
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.beginTransaction();
		s.saveOrUpdate(user);
		s.getTransaction().commit();
	}

	/**
	* Get User By UserName
	*
	* @param username 
	* @throws java.Nullpoint.exception
	*/
	public User getUserByUserName(String username) {
		List<User> matchedList = (List<User>) getHibernateTemplate().find("from User where userName='" + username + "'");
		if (matchedList.size() != 0) {
			return (User) matchedList.get(0);
		} else {
			return null;
		}
	}

}
