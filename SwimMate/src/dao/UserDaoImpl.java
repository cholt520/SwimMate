package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.User;

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

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		
	}

}
