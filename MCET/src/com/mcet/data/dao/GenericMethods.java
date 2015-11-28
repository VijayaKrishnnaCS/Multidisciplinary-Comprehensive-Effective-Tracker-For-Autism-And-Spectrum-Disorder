package com.mcet.data.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.service.ServiceRegistry;

public class GenericMethods {
	Object transientInstance;
	List<Object> transientInstanceList=new ArrayList<Object>();
	Session session=null;
	SessionFactory sessionFactory;
	public GenericMethods()
	{
		Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");         
        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
        SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		session = sessionFactory.openSession();
	}
	public Object save() {
	    Transaction t=session.getTransaction();
	    t.begin();
	    session.saveOrUpdate(transientInstance);
	    session.flush();
	    t.commit();
	    Object res=transientInstance;
	    session.close();
	    return res;
	}
	public void saveAll() {
	    Transaction t=session.getTransaction();
	    t.begin();
	    for(Object objToSave:transientInstanceList)
	    {
	    session.saveOrUpdate(objToSave);
	    }
	    t.commit();
	    session.close();
	}
	@SuppressWarnings("rawtypes")
	public Object findById(int iD,Class className) {
		 Object searchedObject=(Object)session.createCriteria(className).add(Restrictions.eq("id",iD)).uniqueResult();
		 session.close();
		 return searchedObject;
	}
	public void delete(){
	    Transaction t=session.getTransaction();
	    t.begin();
	    session.delete(transientInstance);
	    t.commit();	  
	    session.close();
	}
	public void merge(){
	    Transaction t=session.getTransaction();
	    t.begin();
	    session.merge(transientInstance);
	    t.commit();	  
	    session.close();
	}
	public List<?> listQuery(String queryString)
	{
		Transaction t=session.getTransaction();
	    t.begin();
		Query query = session.createQuery(queryString);
		List<?> res=query.list();
		t.commit();	  
	    session.close();
		return res;		
	}
	public int executeQuery(String queryString)
	{
		Query query = session.createQuery(queryString);
		Transaction t=session.getTransaction();
	    t.begin();
		int res= query.executeUpdate();
		t.commit();	  
	    session.close();
		return res;
	}
	public int getRowCount(String queryString)
	{
		int count = ((Long)session.createQuery(queryString).uniqueResult()).intValue();
		session.close();
		return count;
	}
}
