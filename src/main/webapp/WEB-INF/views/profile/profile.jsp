<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<link href="<c:url value="/resources/css/profile.css"/>" rel="stylesheet" id="bootstrap-css">
<div class="container" style="margin-top: inherit;">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
								<c:forEach items="${results}" var="result">
								<div class="mt-3">
									<h4>${result.userName}</h4>
									<p class="text-secondary mb-1">Full Stack Developer</p>
									<p class="text-muted font-size-sm">Bay Area, San Francisco, ${result.address}</p>
									<button class="btn btn-primary">Follow</button>
									<button class="btn btn-outline-primary">Message</button>
								</div>
								</c:forEach>
							</div>
							<hr class="my-4">
							<ul class="list-group list-group-flush">
								
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter me-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
									<span class="text-secondary">@bootdey</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram me-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
									<span class="text-secondary">bootdey</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook me-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
									<span class="text-secondary">bootdey</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card">
						<c:forEach items="${results}" var="result">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Họ Và Tên</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${result.fullName}">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${result.email}">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Phone</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${result.phoneNumber}">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">PassWord</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="password" class="form-control" value="${result.fullName}">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Address</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${result.address}">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									<input type="button" class="btn btn-primary px-4" value="Save Changes">
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h5 class="d-flex align-items-center mb-3">Project Status</h5>
									<p>Web Design</p>
									<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



<<%-- script src="<c:url value="/resourcesProfile/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resourcesProfile/js/jquery-1.11.1.min.js"/>"></script>



<link href="<c:url value="/resourcesProfile/css/bootstrap.min.css"/>" rel="stylesheet" id="bootstrap-css">


<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					
				</div>
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons">
					<button type="button" class="btn btn-success btn-sm">Thay đổi ảnh đại diện</button>
				</div>
				<!-- END SIDEBAR BUTTONS -->
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
							Trang chủ </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-user"></i>
							Thông tin tài khoản </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-off"></i>
							Đăng xuất </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>

		<div class="col-sm-4">
            <h6 class="mb-1">
              <b>THÔNG TIN CÁ NHÂN</b>
            </h6>
        </div>
		
		<div class="col-md-9">
            <div class="profile-content">
			   <div class="col-md-8">
              <div class="card mb-3">
              <c:forEach items="${results}" var="result">
                <div class="card-body">
                
                 <form:form modelAttribute="modelForm" servletRelativeAction="/profile" method="POST" >
                <form:hidden path="id"/>
                <form:hidden path="userName"/>
                <form:hidden path="activeFlag"/>
                <form:hidden path="createDate"/>
                <form:hidden path="updateDate"/>
                  <div class="row">          
                    <div class="col-sm-3">
                      <h6 class="mb-0">
                      	<b>Họ và tên</b>
                      </h6>
                     
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <form:input path="fullName"/> 
                     ${result.fullName}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">
                      	<b>Email</b>
                      </h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <form:input path="email"/>
                   ${result.email}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">
                      	<b>Password</b>
                      </h6> 
                    </div>
                    <div class="col-sm-9 text-secondary">
                       <form:input type="password" path="password"/>
                       <input type="password" style="border: none;" value="${result.fullName}">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0"><b>Phone</b></h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <form:input path="phoneNumber"/>
                      ${result.phoneNumber}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0"><b>Address</b></h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <form:input path="address"/>
                      ${result.address}
                    </div>
                  </div>
                  <hr>
                  <!-- <div class="row">
                    <div class="col-sm-12">
                      <a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Chỉnh sửa</a>
                <button type="submit" class="btn btn-success">Submit</button>
 					</div>
                  </div> -->
                   </form:form> 
                 
                </div>
                 </c:forEach>
              </div>
            </div>
		</div>
	</div>
</div>
</div>
<br>
<br> --%>
