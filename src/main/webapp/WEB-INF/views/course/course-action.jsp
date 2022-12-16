<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- css khóa học -->
  	<link href=" <c:url value="/resources/css/base.css"/>" rel="stylesheet">
  	<link href=" <c:url value="/resources/css/course.css"/>" rel="stylesheet">
  	<link href=" <c:url value="/resources/css/style.css"/>" rel="stylesheet">
  	<link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<div class="site_main">
                <div class="main_center">
                    <div class="main_left">
                        <h2 class="course_detail-title">
                            * <a style="color: #588d3f;" href=""><b>${courses.courseName}</b></a>
                        </h2>
                        <h4 class="">
                            * <a style="color: #588d3f;" href=""><b>${courses.description}</b></a>
                        </h4>
                        
                        
                        
                        <div class="cover_container">
                            <img style="cursor:pointer" src=" <c:url value="/resources/images/${courses.urlWeb}"/>"
                                alt="">
                            <br>
                            <div title="play" class="btn_play-icon"
                                onclick="load_iframe()">
                                <i class="fa fa-play"></i>
                            </div>
                            <iframe id="course_ifr"
                                src="${courses.linkVideo}"
                                frameborder="0" allowfullscreen></iframe>
                            <div class="server_location-container">
                                <span class="server_location">#Máy chủ youtube</span>
                            </div>
                        </div>

                        <ul class="nav_course-tab">
                            <li class="intro_tab" >
                                <a class="tab" href="#intro_content" onclick="change_content('course_price-container',this)">Giới thiệu khóa học</a>
                            </li>
                            <li class="preview_tab" >
                                <a class="tab" href="#preview_content" onclick="change_content('preview-course-container',this)">Xem thử các bài giảng</a>
                            </li>
                        </ul>

                        <div class="tab_content">
                           <div id="intro_content" class="intro">
                            <div class="course_detail-container">
                                <div id="course_price-container">
                                    <div class="info">Học phí: <b>0</b>
                                        ₫ ( 0 ¥ ) 
                                    </div>
                                    <div class="info">Thời gian: Miễn phí vô thời hạn
                                    </div>
                                    <div class="info">Khóa học bao gồm <b> 25</b> bài học với 
                                        <b>150</b> videos bài giảng
                                    </div>
                                    <div class="info">
                                        Giảng viên: Nguyễn Văn Dũng, Phương Thanh, Nguyễn Khắc Nghĩa, Yuka Murakami, Shimakawa Yuki
                                    </div>
                                    <div class="info">Mô tả: Học theo giáo trình minanonihongo
                                        <div>Tổng thời lượng video bài học của khóa học N5 tương ứng với: 45 giờ học. Trong đó bao gồm:&nbsp;</div>
                                        <div>Ngữ pháp cô Nghiêm Hồng Vân: 20h12'</div>
                                        <div>Ngữ pháp cô Thanh: 8h52'</div>
                                        <div>Chữ hán: 8h52'</div>
                                        <div>Từ vựng: 2h41'</div>
                                        <div>Đọc hiểu: 8h59'</div>
                                        <div>Hội thoại: 1h33'</div>
                                    </div>
                                </div>
                            </div>
                           </div>
                           <div id="preview_content" class="preview" >
                            <div id="preview-course-container">
                                <div class="course-item">
                                  <div class="images">
                                      <a href="">
                                        <img src=" <c:url value="/resources/imagesdungmori/home-lesson.png"/>">
                                      </a>
                                  </div>
                                  <div class="info_img">
                                      <div class="info_title">
                                          <a href="">Ngữ pháp</a>
                                      </div>
                                  </div>
                                </div>
                                <div class="course-item">
                                  <div class="images">
                                      <a href="">
                                        <img src=" <c:url value="/resources/imagesdungmori/home-lesson2.png"/>">
                                      </a>
                                  </div>
                                  <div class="info_img">
                                      <div class="info_title">
                                          <a href="">Đọc hiểu</a>
                                      </div>
                                  </div>
                                </div>
                                <div class="course-item">
                                  <div class="images">
                                      <a href="">
                                        <img src=" <c:url value="/resources/imagesdungmori/home_lesson3.png"/>">
                                      </a>
                                  </div>
                                  <div class="info_img">
                                      <div class="info_title">
                                          <a href="">Chữ hán</a>
                                      </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div class="comment_container">

                        </div>
                    </div>
                    <div class="main_right">
                        <!-- main_right -->
                        
                        <a href="#">
                            <div class="see_more"style="background-color: #69aa00;color: #ffff;">
                                Đây Là Khóa Học Miễn phí
                                <i style="font-size: 11px;margin-left: 4px;"
                                    class="fa fa-arrow-right"></i>
                            </div>
                        </a>
                        <a href="<c:url value="/course"/>" >
                            <div class="see_more">
                                Xem thêm các khóa học khác
                                <i style="font-size: 11px;margin-left: 4px;"
                                    class="fa fa-arrow-right"></i>
                            </div>
                        </a>
                        <!-- list item menu -->
                        <div class="course_list-container">
                            <div class="block_title">Tiến trình học</div>
                            <div class="panel_group">
                                
                                
                                <c:forEach items="${chapterList}" var="chapter" varStatus="loop">
                        
                                <div class="panel" id="panel${chapter.id}">
                                    <div class="panel_heading">
                                        <a href="#panel${chapter.id}">
                                            <strong style="font-size: 14px;">${chapter.chapterName}</strong>
                                        </a>
                                    </div>
                                    <div class="panel_collapse">
                                        <ul class="scroll_items">
                                        	<c:forEach items="${chapter.lessions}" var="lession" varStatus="loop1">
                                            <li class="lesson_item">
                                                <a href="<c:url value="/course-${courses.id}/lession-${lession.id}"/>" >
                                                    <span style="display: block;
                                                        width: 10px; height:
                                                        10px; border-radius:
                                                        100%; background: #eee;
                                                        margin-right: 10px;"></span>
                                                    <span style="flex: 1;">${lession.lessionName}</span>
                                                    <div>
                                                        <span
                                                            class="study_free">Học
                                                            thử</span>
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
            
