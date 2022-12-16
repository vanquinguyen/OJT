package jappan.validate;

import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import jappan.model.Lession;
import jappan.service.LessonService;

@Component
public class LessonValidator implements Validator{

	@Autowired
	private LessonService lessonService;
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Lession.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Lession lession = (Lession) target;
		ValidationUtils.rejectIfEmpty(errors, "lessionName", "msg.required");
		ValidationUtils.rejectIfEmpty(errors, "urlVideo", "msg.required");
		
		/*
		 * if(lession.getUrlVideo()!=null) { List<Lession> results=
		 * lessonService.findByLesson("urlVideo", lession.getUrlVideo());
		 * if(results!=null && !results.isEmpty()) { if(lession.getId() !=null &&
		 * lession.getId() !=0) { if(results.get(0).getId() != lession.getId()) {
		 * errors.rejectValue("urlVideo", "msg.username.exist"); } } else {
		 * errors.rejectValue("urlVideo", "msg.username.exist"); } } }
		 */
		
		if(!lession.getMultipartFile().getOriginalFilename().isEmpty()) {
			String extension =FilenameUtils.getExtension(lession.getMultipartFile().getOriginalFilename());
			if(!extension.equals("jpg") && !extension.equals("png") && !extension.equals("pdf")) {
				errors.rejectValue("multipartFile", "msg.file.extension.error");
			}
		}
	}

}
