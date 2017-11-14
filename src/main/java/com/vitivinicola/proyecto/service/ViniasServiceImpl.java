package com.vitivinicola.proyecto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vitivinicola.proyecto.dao.UserDao;
import com.vitivinicola.proyecto.dao.ViniasDao;
import com.vitivinicola.proyecto.model.User;
import com.vitivinicola.proyecto.model.Vinias;

@Service("viniasService")
@Transactional
public class ViniasServiceImpl implements ViniasService {

	@Autowired
	private ViniasDao dao;

	public Vinias findById(int id) {
		return dao.findById(id);
	}

	public void saveVinia(Vinias vinia) {
		dao.saveVinia(vinia);
	}

	public void updateVinia(Vinias vinia) {
		Vinias entity = dao.findById(vinia.getId());

		entity.setName(vinia.getName());
		entity.setRut(vinia.getRut());
		entity.setComuna(vinia.getComuna());
		entity.setCiudad(vinia.getCiudad());
		entity.setDireccion(vinia.getDireccion());
		entity.setLatitud(vinia.getLatitud());
		entity.setLongitud(vinia.getLongitud());
		entity.setVariedad(vinia.getVariedad());
		entity.setDescripcion(vinia.getDescripcion());
		entity.setEmail(vinia.getEmail());

	}

	public List<Vinias> findAllVinias() {
		return dao.findAllVinias();
	}
	public void deleteVinia(int id) {
		dao.deleteVinia(id);
	}
}