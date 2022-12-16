<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href=" <c:url value="/resources/css/bootstrap.css"/>" >
  <!-- fonts style -->
  <link href=" <c:url value="/resources/css/css.css"/>" rel="stylesheet" >

  <!-- My style -->
  <link href=" <c:url value="/resources/css/home.css"/>" rel="stylesheet" />
  <!-- responsive style -->
  <link href=" <c:url value="/resources/css/ responsive.css"/>" rel="stylesheet" />
  <link rel="stylesheet" href=" <c:url value="/resources/css/owl.carousel.min.css"/>">
  <link rel="stylesheet" href=" <c:url value="/resources/css/owl.theme.default.min.css"/>">
  <link rel="stylesheet" href=" <c:url value="/resources/css/ionicons.min.css"/>">
  <%-- <link rel="stylesheet" href=" <c:url value="/resources/css/alphabet.css"/>">
  <link rel="stylesheet" href=" <c:url value="/resources/css/letters.css"/>">
  <link rel="stylesheet" href=" <c:url value="/resources/css/global.css"/>"> --%>
  		
    <!-- background-color -->
   <link href=" <c:url value="/resources/css/luyenthi.css"/>" rel="stylesheet" />
   <link href=" <c:url value="/resources/css/style.min.css"/>" rel="stylesheet" />
  <!-- style default  aaaaaaaaaaaa  chính là nó       -->
  <link href=" <c:url value="/resources/css/a_header.css"/>" rel="stylesheet">
  <link href=" <c:url value="/resources/css/b_header.css"/>" rel="stylesheet">
  <link href=" <c:url value="/resources/css/c_header.css"/>" rel="stylesheet">
  <link rel="stylesheet" href=" <c:url value="/resources/css/home2.css"/>">
  
  	
</head>

<body>
  
    <!--Phần sidebar -->
    <tiles:insertAttribute name="sidebarmenu"></tiles:insertAttribute>
    

    <!-- phần slider show section -->
    <!-- page content -->
        <tiles:insertAttribute name="body"></tiles:insertAttribute>
        <!-- /page content -->
    



  <!-- phần footer info section -->
  <tiles:insertAttribute name="footer"></tiles:insertAttribute>


  <!-- Script -->
  <script type="text/javascript" src=" <c:url value="/resources/js/jquery-3.4.1.min.js"/>"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/jquery.min.js"/>"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/bootstrap.bundle.min.js"/>"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/bootstrap.js"/>"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/main.js"/>"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/owl.carousel.min.js"/>"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/popper.js"/>"></script>
  <!--scrip khoa hoc  -->
  <script src="https://code.jquery.com/jquery-latest.js"></script>
  <script type="text/javascript" src=" <c:url value="/resources/js/script.js"/>"></script>


</body>

</html>