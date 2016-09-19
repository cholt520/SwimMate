package dao;

import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.FlushMode;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import entity.User;

@Transactional
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	

	
	
	@Override
	public User getUserById(int id) {
		return (User) getHibernateTemplate().find("from User where user_id=" + id).get(0);
	}

	@Override
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

	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void addUser(User user) {
		
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.setFlushMode(FlushMode.AUTO);
		s.save(user);
		
	}

	@Transactional
	public void modifyUser(User user) {
		Session s = getHibernateTemplate().getSessionFactory().openSession();
		s.setFlushMode(FlushMode.AUTO);
		s.update(user);
	}

	@Override
	public User getUserByUserName(String username) {
		List<User> matchedList = (List<User>) getHibernateTemplate().find("from User where userName=" + username);
		if (matchedList.size() != 0) {
			return (User) matchedList.get(0);
		} else {
			return null;
		}
	}

	
	

}
