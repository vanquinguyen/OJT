<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%@page contentType="text/html; charset=UTF-8" %>
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

  <title>hoctiengnhatonline</title>

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
</head>
    <div class="main">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src=" <c:url value="/resources/images/signin-image.jpg"/>" alt="sing up image"></figure>
                        <a href="register.html" class="signup-image-link">Tạo tài khoản mới tại đây</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">ĐĂNG NHẬP</h2>
                        <form:form modelAttribute="loginForm" servletRelativeAction="/processLogin" method="POST" class="register-form" >
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <form:input type="text" path="userName" cssClass="help-block" placeholder="Username"/>
                                <div class="has-error" style="color: red;">
                					<form:errors type="text" path="userName" cssClass="help-block"></form:errors>
                				</div>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <form:input type="password" path="password"  placeholder="Password"/>
                                <div class="has-error" style="color: red;">
                					<form:errors path="password" cssClass="help-block"></form:errors>
               					</div>
                            </div>
                           
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Đăng nhập"/>
                            </div>
                        </form:form>
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
