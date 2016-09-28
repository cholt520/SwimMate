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
import entity.Report;

public class ReportDaoImpl extends HibernateDaoSupport implements ReportDao{

	/**
	* Get All Reports
	*
	* @param none 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> getAllReport() {
		HibernateTemplate template = getHibernateTemplate();
        return (List<Report>) template.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Report");
                query.setMaxResults(500);
                query.setFirstResult(0);
                return query.list();
            }
        });
	}

	/**
	* Get All Report By Id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public Report getReportById() {
		return null;
	}

	
	/**
	* Add Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void addReport(Report report) {
		
		getHibernateTemplate().getSessionFactory().openSession().save(report);
		
	}

	/**
	* delete Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void deleteReport(Report report) {
		
	}

	/**
	* change Report
	*
	* @param report 
	* @throws java.Nullpoint.exception
	*/
	public void modifyReport(Report report) {
		
	}

	/**
	* find Report by id
	*
	* @param id 
	* @throws java.Nullpoint.exception
	*/
	public List<Report> findReportsByBeachName(String beachName) {
		List<Report> list = new ArrayList<Report>();
		list = (List<Report>) getHibernateTemplate().find("from Report as report where report.beachName like '%" + beachName + "%'" );	
		return list;
	}

}
