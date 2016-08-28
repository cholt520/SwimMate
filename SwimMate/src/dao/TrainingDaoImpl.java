package dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import entity.Beach;
import entity.Training;

public class TrainingDaoImpl extends HibernateDaoSupport implements TrainingDao{

	@Override
	public Training getTrainingById(int id) {
		return null;
	}

	@Override
	public List<Training> getAllTraining() {
		return  (List<Training>) getHibernateTemplate().find("from Training");
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

}
