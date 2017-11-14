package com.vitivinicola.proyecto.dao;

import java.util.List;

import com.vitivinicola.proyecto.model.User;
import com.vitivinicola.proyecto.model.Vinias;

public interface ViniasDao {
	public Vinias findById(int id);
	
	public void saveVinia(Vinias vinia);
	
	public void updateVinia(Vinias vinia);
	
	public void deleteVinia(int id);

	public List<Vinias> findAllVinias(); 
}
