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

import entity.Reminder;

@Transactional
public class ReminderDaoImpl extends HibernateDaoSupport implements ReminderDao{

	/**
	* Get Reminder By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Reminder getReminderById(int id) {
		return (Reminder) getHibernateTemplate().find("from Reminder where ID=" + id).get(0);
	}

	/**
	* Get all Reminders
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getAllReminder() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Reminder>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Reminder");
                query.setMaxResults(500);
                query.setFirstResult(0);
                return query.list();
            }
        });
	}
	
	/**
	* delete Reminders
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Reminder> getReminderByUserID(int userID) {
		List<Reminder> matchedList = (List<Reminder>) getHibernateTemplate().find("from Reminder where user_id=" + userID);
		if (matchedList.size() != 0) {
			return matchedList;
		} else {
			return null;
		}
	}
	
	/**
	* add Reminders
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	@Transactional
	public void deleteReminder(Reminder reminder) {
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.beginTransaction();
		s.delete(reminder);
		s.getTransaction().commit();
	}

	/**
	* change Reminders
	*
	* @param reminder 
	* @throws java.Nullpoint.exception
	*/
	@Transactional
	public void addReminder(Reminder reminder) {
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.setFlushMode(FlushMode.AUTO);
		s.save(reminder);
	}

	/**
	* get Reminders by user id
	*
	* @param userID 
	* @throws java.Nullpoint.exception
	*/
	@Transactional
	public void modifyReminder(Reminder reminder) {
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.beginTransaction();
		s.saveOrUpdate(reminder);
		s.getTransaction().commit();
		
	}

}
