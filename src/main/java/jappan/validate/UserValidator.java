package jappan.validate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import jappan.model.Users;
import jappan.service.UserService;

@Component
public class UserValidator implements Validator {
	@Autowired
	private UserService userService;

	
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Users.class;
	}

	
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Users user = (Users) target;
		/* ValidationUtils.rejectIfEmpty(errors, "password", "msg.required"); */
		ValidationUtils.rejectIfEmpty(errors, "userName", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "fullName", "msg.required");

		if (user.getUserName() != null) {
			List<Users> results = userService.findByProperty("userName", user.getUserName());
			if (results != null && !results.isEmpty()) {
				if (user.getId() != null && user.getId() != 0) {
					if (results.get(0).getId() != user.getId()) {
						errors.rejectValue("userName", "msg.username.exist");
					}
				} else {
					errors.rejectValue("userName", "msg.username.exist");
				}

			}

		}

	}

}
