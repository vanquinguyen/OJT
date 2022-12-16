<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<main id="content">
            <section class="pageSectionContent">
                <%-- <div class="bannerTop">
                    <div class="container text-center">
                        <div class="bannerTop_Group">
                            <img src=" <c:url value="/resources/images/lotrinhoc.png"/>" alt="nuiphusi">
                        </div>
                    </div>
                </div> --%>
                
                <div class="bannerTop_Group">
                            <img src=" <c:url value="/resources/images/lotrinhoc.png"/>" alt="nuiphusi">
                        </div>

                <div class="blockCategory">
                    <div class="rikiBlockCourseAll_content__header ">
                        <div class="tabs justify-content-center">
                            <h2 class="vanvu" style="color:#700764">Danh Sách Các Khóa Học</h2>
                            
                        </div>
                    </div>
                    <div class="rikiBlockCourseAll_content__body">
                        <!-- Tab panes -->
                        <div class="tabs-content">
                            <div class="tabs-content__item" id="" style="display: block">
                                <div class="tabs_PageContent">

                                    <div class="list_course">
                                        <div class="container">
                                            <div class="row">
                                            <c:forEach items="${courses}" var="course" varStatus="loop">
                                                <div class="col-md-4 col-sm-6 col-12 mb-4">
                                                <!-- <div class="col-md-4 col-sm-6 col-12"> -->
                                                    <div class="card h-100"style="background: #f0ecfb"> 
															  <img src="<c:url value="/resources/images/${course.urlWeb}"/>"alt=" ">
															  <div class="card-body">
															    <h5 class="d-flex justify-content-center" ><a href="#"style="color:#700766">${course.courseName}</a></h5>
															    
															    <p class="d-flex justify-content-center">${course.description}</p>
															    <p class="d-flex justify-content-center" style="color: #FF0414">${course.time}</p>
															  </div>
															  
															  <div class="card-body">
															  	<div class="d-flex justify-content-center" >
															    <a class="btn btn-primary"style="background: #ffb916" href="<c:url value="/course-${course.id}"/>">Vào học thử </a>
															    
															    </div>
															  </div>
															</div>
                                                	</div>
                                             </c:forEach>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
    
    </section>
    </main>