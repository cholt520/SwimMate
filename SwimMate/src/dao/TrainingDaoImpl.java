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

	@Override
	public Training getTrainingById(int id) {
		return null;
	}

	@Override
	public List<Training> getAllTraining() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Training>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Training");
                query.setMaxResults(10);
                query.setFirstResult(0);
                return query.list();
            }
        });
	}

	@Override
	public void deleteTraining(Training training) {
		
	}

	@Override
	public void addTraining(Training training) {		
	}

	@Override
	public void modifyTraining(Training training) {		
	}

	@Override
	public List<Training> getTrainingByState(String state) {
		return (List<Training>)getHibernateTemplate().find("from Training as training where training.state like '%" + state + "%'");
		
	}

}
