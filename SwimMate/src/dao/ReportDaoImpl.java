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

	public Report getReportById() {
		return null;
	}

	
	public void addReport(Report report) {
		
		getHibernateTemplate().getSessionFactory().openSession().save(report);
		
	}

	public void deleteReport(Report report) {
		
	}

	public void modifyReport(Report report) {
		
	}

	@Override
	public List<Report> findReportsByBeachName(String beachName) {
		List<Report> list = new ArrayList<Report>();
		list = (List<Report>) getHibernateTemplate().find("from Report as report where report.beach_name like '%" + beachName + "%'" );	
		return list;
	}

}
