package com.vitivinicola.proyecto.dao;

import java.util.List;

import com.vitivinicola.proyecto.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
