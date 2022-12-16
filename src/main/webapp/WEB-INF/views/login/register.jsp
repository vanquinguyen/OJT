<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>đăng ký tài khoản</title>

  <!-- Font Icon -->
  <link rel="stylesheet" href=" <c:url value="/resources/fonts/material-icon/css/material-design-iconic-font.min.css"/>">
  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href=" <c:url value="/resources/css/bootstrap.css"/>" />
  <!-- fonts style -->
  <link href=" <c:url value="/resources/css/css.css"/>" rel="stylesheet" />
  
  <!-- My style -->
  <link href=" <c:url value="/resources/css/taikhoan.css"/>" rel="stylesheet" />
  <!-- responsive style -->
  <link href=" <c:url value="/resources/css/responsive.css"/>" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
    <div class="main">
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">ĐĂNG KÝ</h2>
                        <form:form modelAttribute="registerForm" servletRelativeAction="/register/save" method="POST" class="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <form:input type="text" path="userName" cssClass="help-block" placeholder="Username"/>
                                <div class="has-error" style="color: red;">
									<form:errors path="userName" cssClass="help-block"></form:errors>
								</div>
                            </div>
                            
                            
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <form:password  path="password" cssClass="help-block" placeholder="Password"/>
                                <div class="has-error" style="color: red;">
									<form:errors path="password" cssClass="help-block"></form:errors>
								</div>
                            </div>
                            
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <form:input type="email" path="email" cssClass="help-block" placeholder="Email"/>
                                <div class="has-error" style="color: red;">
									<form:errors path="email" cssClass="help-block"></form:errors>
								</div>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <form:input type="text" path="fullName" cssClass="help-block" placeholder="FullName"/>
                                <div class="has-error" style="color: red;">
									<form:errors path="fullName" cssClass="help-block"></form:errors>
								</div>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <form:input type="phone" path="phoneNumber" cssClass="help-block" placeholder="Phone"/>
                                <div class="has-error" style="color: red;">
									<form:errors path="phoneNumber" cssClass="help-block"></form:errors>
								</div>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <form:input type="text" path="address" cssClass="help-block" placeholder="Address"/>
                                <div class="has-error" style="color: red;">
									<form:errors path="address" cssClass="help-block"></form:errors>
								</div>
                            </div>
                            <!-- <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>Tôi đồng ý tất cả các tuyên bố trong Điều khoản dịch vụ</label>
                            </div> -->
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng ký"/>
                            </div>
                        </form:form>
                    </div>
                    <div class="signup-image">
                        <figure><img src=" <c:url value="/resources/images/signup-image.jpg"/>" alt="sing up image"></figure>
                    </div>
                </div>
            </div>
        </section>
    </div>


  <!-- Script -->
  <script src=" <c:url value="/resources/js/jquery-ui.min.js"/>"></script>
  <script src=" <c:url value="/resources/js/main.js"/>"></script>

</body>

</html>