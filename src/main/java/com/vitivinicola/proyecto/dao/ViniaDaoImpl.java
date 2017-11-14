package com.vitivinicola.proyecto.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vitivinicola.proyecto.model.Vinias;

@Repository("viniasDao")
public class ViniaDaoImpl extends AbstractDao<Integer, Vinias> implements ViniasDao{

	
	public void saveVinia(Vinias vinia) {
		persist(vinia);
	}
	public void updateVinia( Vinias vinia ) {
		 update(vinia);
	}
	public Vinias findById(int id) {
		 return getByKey(id);
	}
	
	public void deleteVinia(int id) {
		Vinias vinia =  getByKey(id);
        delete(vinia);
	}

	@SuppressWarnings("unchecked")
	public List<Vinias> findAllVinias() {
		Criteria crit = createEntityCriteria();
        return (List<Vinias>)crit.list();
	}
	
}
