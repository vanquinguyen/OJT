package jappan.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import jappan.model.Chapter;

@Component
public class ChapterValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Chapter.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Chapter chapter= (Chapter) target;
		ValidationUtils.rejectIfEmpty(errors, "chapterName", "msg.required");
		
	}
	
}
