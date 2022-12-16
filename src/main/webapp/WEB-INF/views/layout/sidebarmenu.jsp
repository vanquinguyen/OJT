<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaa -->
          <a class="navbar-brand" href="index">
            <h3>
              Eight Team
            </h3>
            <span> Japaness</span>
          </a>
          <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaa -->
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaa -->

          <div class="navmenuTop_block collapse navbar-collapse" id="navbarSupportedContent">
            <div class="navmenu collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="formatUl navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="<c:url value="/index"/>" title="Trang chủ">Trang chủ</a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="<c:url value="/gioithieu"/>" title="Giới thiệu">Giới Thiệu</a>
                </li>
                <li>
                  <a class="nav-link" href="<c:url value="/course"/>">Các khóa Tiếng Nhật</a>
                  <ul class="submenu formatUl nav-item">
                    <li><a href="<c:url value="/bangchucai"/>" title="Bảng chữ cái">Bảng chữ cái tiếng Nhật</a>
                    </li>
                    <li><a href="<c:url value="/course-2"/>" title="Khóa học tiếng Nhật online N5">Khóa học tiếng Nhật
                        online N5</a>
                    </li>
                    <li><a href="<c:url value="/course-3"/>" title="Khoá học tiếng nhật online N4">Khoá học tiếng nhật
                        online N4</a>
                    </li>
                    <li><a href="<c:url value="/course-4"/>" title="Khoá học tiếng Nhật online N3">Khoá học tiếng Nhật
                        online N3</a>
                    </li>
                    <li><a href="<c:url value="/course-5"/>" title="Khoá học tiếng Nhật online N2">Khoá học tiếng Nhật
                        online N3-N4</a>
                    </li>
                    <li><a href="<c:url value="/course-6"/>" title="Khoá học tiếng Nhật online N1">Khoá học tiếng Nhật
                        online N3-N4-N5</a>
                    </li>
                  </ul>
                </li>

                <li>
                  <a class="nav-link" href="<c:url value="/luyenthi-n"/>">Luyện thi tiếng Nhật</a>
                  <ul class="submenu formatUl nav-item">
                    <li><a href="<c:url value="/luyenthi-n1"/>">Luyện thi tiếng Nhật N5</a>
                    </li>
                    <li><a href="<c:url value="/luyenthi-n2"/>">Luyện thi tiếng Nhật
                        N4</a></li>
                    <li><a href="<c:url value="/luyenthi-n3"/>">Luyện thi tiếng Nhật
                        N3</a></li>
                    <li><a href="<c:url value="/luyenthi-n4"/>">Luyện thi tiếng Nhật
                        N2</a></li>
                    <li><a href="<c:url value="/luyenthi-n5"/>">Luyện thi tiếng Nhật
                        N1</a></li>
                  </ul>
                </li>
                 <c:choose>
                    <c:when test="${sessionScope.userInfo!=null}">

                        <li class="nav-item ml-3">
                            <a class="nav-link" href="<c:url value="/profile"/>">${sessionScope.userInfo.fullName}</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a class="nav-link" href="<c:url value="/logout"/>">Logout</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/login"/>">Đăng Nhập</a>
                        </li>
                        <li class="nav-item">
		                  <a class="nav-link" href="<c:url value="/register"/>">Đăng ký</a>
		                </li>
                    </c:otherwise>
                </c:choose> 
                
                


              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>