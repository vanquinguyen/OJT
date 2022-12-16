package jappan.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import jappan.model.Course;

@Component
public class CourseValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Course.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmpty(errors, "courseName", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "description", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "time", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "linkVideo", "msg.required");
	}
	
}
