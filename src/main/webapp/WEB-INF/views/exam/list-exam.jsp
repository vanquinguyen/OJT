<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet" href=" <c:url value="/resources/css/test/list.css"/> ">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href=" <c:url value="/resources/css/alphabet.css"/>">
 <link rel="stylesheet" href=" <c:url value="/resources/css/letters.css"/>">
 <link rel="stylesheet" href=" <c:url value="/resources/css/global.css"/>">
 
 <div class="swapper">
        <div class="site_main" style="height: 600px;margin: auto;background-image: url( <c:url value="/resources/images/hero-bg.jpg)"/> ">
            <div class="main_center">
                <div class="course_list-container">
                    <h2 class="h_top" >Luyện thi JLPT</h2>
                    <div class="panel_group">
                    
                    <c:forEach items="${examPart}" var="examPart" >	
                        <div class="panel" id="panel${examPart.id}">
                            <div class="panel_heading">
                                <a href="#panel${examPart.id}" style="margin-top: 10px;">
                                    <strong style="display: block; height: 40px; font-size: 20px;padding: 10px;">
                                        ${examPart.examName}</strong>
                                </a>
                            </div>
                            <div class="panel_collapse">
                                <ul class="scroll_items">
                                <c:forEach items="${examPart.exams}" var="listExam">
                                    <li class="lesson_item">
                                        <a href="<c:url value="/exam-${listExam.id}"/>" >
                                            <span class="study_free" style="display: block;
                                                        width:35px; height:
                                                35px; border-radius:
                                                        100%; background: #4babf0;
                                                        margin-right:35px;"></span>
                                            <span style="flex: 1;" >${listExam.name}</span>
                                            <div>
                                                <span class="study_free">Luyện thi</span>
                                            </div>
                                        </a>
                                    </li>
                                    </c:forEach>
                                    
                                </ul>
                            </div>
                        </div>
                       </c:forEach>
                       
                       
                    </div>
                </div>

            </div>
        </div>


    </div>