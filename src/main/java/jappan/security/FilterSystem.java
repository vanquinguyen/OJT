package jappan.security;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;

import jappan.model.Auth;
import jappan.model.UserRole;
import jappan.model.Users;
import jappan.util.Constant;



public class FilterSystem implements HandlerInterceptor {
	Logger logger = Logger.getLogger(FilterSystem.class);
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("Request URI ="+request.getRequestURI());
		
		Users users = (Users) request.getSession().getAttribute(Constant.USER_INFO);
		if(users == null) {
			if(request.getRequestURI().contains("/course") || request.getRequestURI().contains("/bangchucai") || request.getRequestURI().contains("/hiragana") || request.getRequestURI().contains("/course-")
					 || request.getRequestURI().contains("/register") || request.getRequestURI().contains("/luyenthi-n") || request.getRequestURI().contains("/index")
					|| request.getRequestURI().contains("/gioithieu") || request.getRequestURI().contains("/logout") ) {
				return true;
			}
			//request.getRequestURI().contains("/exam");
			response.sendRedirect(request.getContextPath()+"/login");
			
		}
		if(users!=null) {
			UserRole userRole =(UserRole) users.getUserRoles().iterator().next();
			String url = request.getServletPath();
//			if (userRole.getRole().getId()==3) {
//				if(request.getRequestURI().contains("/course") || request.getRequestURI().contains("/bangchucai") || request.getRequestURI().contains("/hiragana") || request.getRequestURI().contains("/course-")
//						 || request.getRequestURI().contains("/register") || request.getRequestURI().contains("/luyenthi-n") || request.getRequestURI().contains("/index")
//						|| request.getRequestURI().contains("/gioithieu") || request.getRequestURI().contains("/exam") || request.getRequestURI().contains("/addcomment") || request.getRequestURI().contains("/profile")) {
//					return true;
//				}	
//				if(request.getRequestURI().contains("/admin")) {
//					response.sendRedirect(request.getContextPath()+"/access-denied");
//				}
//				if(!hasPermission(url, users)) {
//					logger.error("ACCESS DENIED URI ="+request.getRequestURI());
//					response.sendRedirect(request.getContextPath()+"/access-denied");
//					return false;
//				}
//			}
//			if (userRole.getRole().getId()!=3) {
				if(request.getRequestURI().contains("/course") || request.getRequestURI().contains("/bangchucai") || request.getRequestURI().contains("/hiragana") || request.getRequestURI().contains("/course-")
						 || request.getRequestURI().contains("/register") || request.getRequestURI().contains("/luyenthi-n") || request.getRequestURI().contains("/index")
						|| request.getRequestURI().contains("/gioithieu") || request.getRequestURI().contains("/exam") || request.getRequestURI().contains("/addcomment") || request.getRequestURI().contains("/profile")) {
					return true;
				}	
				if(!hasPermission(url, users)) {
					logger.error("ACCESS DENIED URI ="+request.getRequestURI());
					response.sendRedirect(request.getContextPath()+"/access-denied");
					return false;
				}
			}
			
		//}
		return true;

	}
	private boolean hasPermission(String url , Users users) {
		if( url.contains("/access-denied") || url.contains("/logout")) {
			return true;
		}
		UserRole userRole =(UserRole) users.getUserRoles().iterator().next();
		Set<Auth> auths = userRole.getRole().getAuths();
		for(Object obj : auths) {
			Auth auth = (Auth) obj;
			if(url.contains(auth.getMenu().getUrl())) {
				return auth.getPermission() ==1 ;
			}
		}
		return false;
		
	}
	
	
}
