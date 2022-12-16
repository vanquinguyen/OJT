package jappan.validate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


import jappan.model.Role;
import jappan.service.RoleService;

@Component
public class RoleValidator implements Validator {

	@Autowired
	private RoleService roleService;

	
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Role.class;
	}

	
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Role role = (Role) target;
		ValidationUtils.rejectIfEmpty(errors, "roleName", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "description", "msg.required");

		if (role.getRoleName() != null) {
			List<Role> roles = roleService.findRole("roleName", role.getRoleName());
			if (!roles.isEmpty() && roles != null) {
				if (role.getId() != null && role.getId() != 0) {
					if (roles.get(0).getId() != role.getId()) {
						errors.rejectValue("roleName", "msg.rolename.exist");
					}
				}
				errors.rejectValue("roleName", "msg.rolename.exist");
			}

		}
	}

}
