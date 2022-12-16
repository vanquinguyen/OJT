package jappan.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import jappan.dao.UserDAO;
import jappan.dao.UserRoleDAO;
import jappan.model.Paging;
import jappan.model.Role;
import jappan.model.UserRole;
import jappan.model.Users;
import jappan.service.UserService;
import jappan.util.HashingPassword;

@Service
public class UserService {
	final static Logger log = Logger.getLogger(UserService.class);
	@Autowired
	private UserDAO<Users> userDAO;
	@Autowired
	private UserRoleDAO<UserRole> userRoleDAO;
	public List<Users> findByProperty(String property , Object value) {
		log.info("Find user by property start ");
		return userDAO.findByProperty(property, value);
		
	}
	public void createUser(Users user) {
		log.info("insert User"+user.toString());
		user.setActiveFlag(1);
		user.setCreateDate(new Date());
		user.setUpdateDate(new Date());
		user.setPassword(HashingPassword.encrypt(user.getPassword()));
		userDAO.save(user);
		UserRole userRole = new UserRole();
		userRole.setUsers(user);
		Role role = new Role();
		role.setId(3);
		userRole.setRole(role);
		userRole.setActiveFlag(1);
		userRole.setCreateDate(new Date());
		userRole.setUpdateDate(new Date());
		userRoleDAO.save(userRole);
	}
	
	public Users findById(Integer id) {
		log.info("find by Id Users");
		return userDAO.findById(Users.class, id);
	}
	public void saveUser(Users user) {
		user.setActiveFlag(1);
		user.setCreateDate(new Date());
		user.setUpdateDate(new Date());
		user.setPassword(HashingPassword.encrypt(user.getPassword()));
		userDAO.save(user);
		UserRole userRole=new UserRole();
		userRole.setUsers(user);
		Role role= new Role();
		role.setId(user.getRoleID());
		userRole.setRole(role);
		userRole.setActiveFlag(1);
		userRole.setCreateDate(new Date());
		userRole.setUpdateDate(new Date());
		userRoleDAO.save(userRole);	
	}
	public void updateUser(Users users) {
		Users user= findById(users.getId());
		if(user!=null) {
			UserRole userRole =(UserRole) user.getUserRoles().iterator().next();
			Role role = userRole.getRole();
			role.setId(users.getRoleID());
			userRole.setRole(role);
			userRole.setUpdateDate(new Date());
			user.setFullName(users.getFullName());
			user.setUserName(users.getUserName());
			user.setEmail(users.getEmail());
			user.setAddress(users.getAddress());
			user.setPhoneNumber(users.getPhoneNumber());
			user.setUpdateDate(new Date());
			userRoleDAO.update(userRole);
		}
		userDAO.update(user);		
	}
	public void deleteUser(Users user) {
		user.setActiveFlag(0);
		user.setUpdateDate(new Date());
		userDAO.update(user);
	}
	public List<Users> getUsersList(Users users, Paging paging){
		StringBuilder queryStr= new StringBuilder();
		Map<String, Object> mapParams= new HashMap<>();
		if(users!=null) {
			if(!StringUtils.isEmpty(users.getFullName())) {
				queryStr.append(" and model.fullName like :fullName");
				mapParams.put("fullName", "%"+ users.getFullName()+"%");
			}
			if(!StringUtils.isEmpty(users.getUserName())) {
				queryStr.append(" and model.userName like :userName");
				mapParams.put("userName", "%"+users.getUserName()+"%");
			}
		}
		return userDAO.findAll(queryStr.toString(), mapParams, paging);
	}
}
