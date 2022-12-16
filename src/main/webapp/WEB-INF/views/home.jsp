<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<div class="container">


                    <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="https://dungmori.com/cdn/qc/default/1621843813_24690_10a317.jpeg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="https://dungmori.com/cdn/qc/default/1621844029_12345_0a343d.jpeg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="https://dungmori.com/cdn/qc/default/1614669438_37035_c09cc9.png" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

  <!-- thanh học tập special section -->
  <section class="special_section">
    <div class="container">
      <div class="special_container">
        <div class="box b1">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/books-stack-of-three.png"/>" alt="" />
          </div>
          <div class="detail-box">
            <h4>
              BẢNG CHỮ CÁI
            </h4>
            <a href="hiragana.html">
              Xem chi tiết
            </a>
          </div>
        </div>
        <div class="box b2">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/study.png"/>" alt="" />
          </div>
          <div class="detail-box">
            <h4>
              CÁC KHÓA HỌC
            </h4>
            <a href="khoahoc.html">
              Xem chi tiết
            </a>
          </div>
        </div>
        <div class="box b3">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/books-stack-of-three.png"/>" alt="" />
          </div>
          <div class="detail-box">
            <h4>
              LUYỆN THI JLPT
            </h4>
            <a href="luyenthi.html">
              Xem chi tiết
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
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
															    <a class="btn btn-primary"style="background: #ffb916" href="#">Vào học thử </a>
															    
															    </div>
															  </div>
															</div>
                                                </div>
                                                </c:forEach>
                                                
                                            </div>

  <!-- blog section -->
  <section class="blog_section layout_padding">
    <div class="side_img">
      <img src=" <c:url value="/resources/images/side-img.png"/>" alt="" />
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="img_container">
            <div class="img-box b1">
              <img src=" <c:url value="/resources/images/hinhblog.jpg"/>" alt="" />
            </div>
            <div class="img-box b2">
              <img src=" <c:url value="/resources/images/hinhblog12.jpg"/>" alt="" />
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h3>
                Đôi chút về Nhật Bản
              </h3>
              <p>
                Ngôn ngữ nào cũng vậy, “chào hỏi” là đều cần phải học trước tiên để bắt đầu một câu chuyện và tiếng Nhật
                cũng không phải là một ngoại lệ. Trong bài viết này chúng ta sẽ học về cách chào hỏi một người chưa quen
                biết, một đồng nghiệp hoặc một người bạn theo ngôn ngữ của Murakami.
              </p>
              <a href="gioithieu.html">
                Xem chi tiết
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- khoa hoc course section -->

  <section class="course_section layout_padding-bottom">
    <div class="side_img">
      <img src=" <c:url value="/resources/images/side-img.png"/>" alt="" />
    </div>
    <div class="container">
      <div class="heading_container"></div>
      <div class="course_container">
        <div class="course_content">
          <div class="box"></div>
          <div class="box"></div>
        </div>
        <div class="heading_container">
          <h8>
            GIỚI THIỆU SƠ VỀ CÁC KHÓA HỌC
          </h8>
          <p>
            Dưới đây là 3 trong 5 khóa học luyện thi JLPT tiếng Nhật
          </p>
        </div>
        <div class="course_content">
          <div class="box">
            <img src=" <c:url value="/resources/images/1.jpg"/>" alt="" />
            <a href="" class="">
              <img src=" <c:url value="/resources/images/link.png"/>" alt="" />
            </a>
            <h5>
              Khóa N5
            </h5>
          </div>
          <div class="box">
            <img src=" <c:url value="/resources/images/3.jpg"/>" alt="" />
            <a href="" class="">
              <img src=" <c:url value="/resources/images/link.png"/>" alt="" />
            </a>
            <h5>
              Khóa N4
            </h5>
          </div>
          <div class="box">
            <img src=" <c:url value="/resources/images/2.jpg"/>" alt="" />
            <a href="" class="">
              <img src=" <c:url value="/resources/images/link.png"/>" alt="" />
            </a>
            <h5>
              Khóa N3
            </h5>
          </div>
        </div>
      </div>
      <div class="btn-box">
        <a href="khoahoc.html">
          Xem chi tiết
        </a>
      </div>
    </div>
  </section>


  <!-- Luyện Thi section -->
  <section class="test_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h3>
          Luyện Thi JLPT
        </h3>
        <p>
          Các khóa luyện thi JLPT
        </p>
      </div>
      <div class="test_container">
        <div class="box">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/luyenthiN5.jpg"/>" alt="" />
          </div>
          <div class="detail-box">
            <h4>
              Luyện Thi JLPT N5
            </h4>
            <h6>
              Luyện thi gồm: Từ vựng-Ngữ pháp-Kanji
            </h6>
          </div>
          <div class="date-box">
            <div class="btn-box">
              <a href="thiN5.html">
                Thi thử JLPT
              </a>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/luyenthiN4.jpg"/>" alt="" />
          </div>
          <div class="detail-box">
            <h4>
              Luyện Thi JLPT N4
            </h4>
            <h6>
              Luyện thi gồm: Từ vựng-Ngữ pháp-Kanji
            </h6>
          </div>
          <div class="date-box">
            <div class="btn-box">
              <a href="thiN4.html">
                Thi thử JLPT
              </a>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/luyenthiN3.jpg"/>" alt="" />
          </div>
          <div class="detail-box">
            <h4>
              Luyện Thi JLPT N3
            </h4>
            <h6>
              Luyện thi gồm: Từ vựng-Ngữ pháp-Kanji
            </h6>
          </div>
          <div class="date-box">
            <div class="btn-box">
              <a href="">
                Thi thử JLPT
              </a>
            </div>
          </div>
        </div>
      </div>

      <div class="btn-box">
        <a href="luyenthi.html">
          Xem chi tiết
        </a>
      </div>
    </div>
  </section>

  <!-- phần liên hệ contact section -->
  <section class="contact_section ">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h3>
                Liên Hệ Với Chúng Tôi
              </h3>
              <p>
                Nếu có thắc mắc về bài học hay luyện thi, hãy liên hệ với chúng tôi qua cách sau:
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="contact-form">
            <h5>
              Thông Tin
            </h5>
            <form action="">
              <div>
                <input type="text" placeholder="Họ Tên " />
              </div>
              <div>
                <input type="text" placeholder="Số Điện Thoại" />
              </div>
              <div>
                <input type="email" placeholder="Email" />
              </div>
              <div>
                <input type="text" placeholder="Nội Dung" class="input_message" />
              </div>
              <div class="d-flex justify-content-center">
                <button type="submit" class="btn_on-hover">
                  Gửi
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  </div>