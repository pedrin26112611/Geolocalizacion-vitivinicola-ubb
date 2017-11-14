package com.vitivinicola.proyecto.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.vitivinicola.proyecto.model.UserProfile;
import com.vitivinicola.proyecto.service.UserProfileService;

/**
 * A converter class used in views to map id's to actual userProfile objects.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, UserProfile>{

	static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);
	
	@Autowired
	UserProfileService userProfileService;
	UserProfile s ;
	/**
	 * Gets UserProfile by Id
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	public UserProfile convert(Object element) {
		//System.out.println("pase por el convertidor");
		
		Integer id = Integer.parseInt((""+((UserProfile)element).getId()).trim());
		UserProfile profile= userProfileService.findById(id);
		logger.info("Perfil : {}",profile);
		return profile;
	}
	
}