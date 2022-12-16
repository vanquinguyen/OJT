<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- thanh học tập special section -->
  <section class="special_section">
    <div class="container">
      <div class="special_container">
        <div class="box b2">
          <div class="img-box">
            <img src=" <c:url value="/resources/images/books-stack-of-three.png"/> " alt="" />
          </div>
          <div class="detail-box">
            <h4>
              CÁC KHÓA LUYỆN THI JLPT
            </h4>
          </div>
        </div>
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
          Luyện thi JLPT được xếp từ mức độ dễ đến mức độ khó: N5-N4-N3-N2-N1
        </p>
      </div>
      <div class="test_container">
      <c:forEach items="${levels}" var="level">
        <div class="box">
          <div class="img-box">
           <img src=" <c:url value="/resources/images/${level.image}"/> " alt="" />
          </div>
          <div class="detail-box">
            <a href=" <c:url value="/luyenthi-n${level.id}"/> ">
            <h4 style="color:black">
              ${level.name}
            </h4></a>
            <h6>
              Luyện thi gồm: Từ vựng-Ngữ pháp-Kanji
            </h6>
          </div>
          <div class="date-box">
            <div class="btn-box">
              <a href=" <c:url value="/luyenthi-n${level.id}"/> ">
                Thi thử JLPT
              </a>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </section>