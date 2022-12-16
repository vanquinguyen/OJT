<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- css khóa học -->
<link href=" <c:url value="/resources/css/base.css"/>" rel="stylesheet">
<link href=" <c:url value="/resources/css/course.css"/>"
	rel="stylesheet">
<link href=" <c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link href=" <c:url value="/resources/css/comment.css"/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="site_main">
	<div class="main_center">
		<div class="main_left">
			<h2 class="course_detail-title">
				* <a style="color: #588d3f;" href=""><b>${courses.courseName}</b></a>
			</h2>
			<h4 class="">
				* <a style="color: #588d3f;" href=""><b>${lession.lessionName}</b></a>
			</h4>



			<div class="cover_container">
				<img style="cursor: pointer"
					src=" <c:url value="${lession.status} " />" alt=""> <br>
				<div title="play" class="btn_play-icon" onclick="load_iframe()">
					<i class="fa fa-play"></i>
				</div>
				<iframe id="course_ifr" src="${lession.urlVideo}" frameborder="0"
					allowfullscreen></iframe>
				<div class="server_location-container">
					<span class="server_location">#Máy chủ youtube</span>
				</div>
			</div>



			<div class="tab_content">
				<div id="intro_content" class="intro">
					<div class="course_detail-container">
						<div id="course_price-container">

							<!-- nhap noi dung o day -->

							<embed style="height: 1000px; width: 100%;"
								type="application/pdf" src="<c:url value="${lession.content}"/>">
						</div>
					</div>
				</div>

			</div>
			<div class="comment_container">
				<ul class="nav nav-pills comment-tab">
					<li class="li-tab user-tab active"><a data-toggle="pill"
						href="#user-comment-content">Ý kiến học viên</a></li>
					<li class="li-tab facebook-tab"><a data-toggle="pill"
						href="#facebook-comment-content">Bình luận bằng facebook</a></li>
				</ul>


				<div class="tab-content">
					<div id="user-comment-content" class="tab-pane fade in active">
						<div class="list-comments"
							style="background-color: rgb(255, 255, 255);">
							<div class="input-comment-container">
								<p>
									<b>Đăng bình luận</b>
								</p>
								<form:form modelAttribute="commentForm"
									servletRelativeAction="/addcomment" method="POST">
									<form:hidden path="lessionId" />
									<form:hidden path="courseId" />
									<div class="form_action">
										<img src="https://dungmori.com/assets/img/default-avatar.jpg"
											class="me-avatar">
										<div style="position: relative;">
											<form:textarea data-emoji-picker="true" id="comment-content"
												rows="1" placeholder="comment..." path="content"
												cssClass="input-comment"
												style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 42px; width: 100%;" />


										</div>
										<button type="submit" class="post-comment-btn">Đăng</button>

										<!-- <span class="post-comment-btn">Đăng</span> -->
										<div id="preview-image-cmt" class="preview-image"></div>
									</div>
								</form:form>
							</div>
							<c:forEach items="${comments}" var="comment">
								<li id="cmt-item-345115" class="comment-item">
									<!----> <a data-fancybox="" data-src="#user-profile-popup"
									href="javascript:;" class="pull-left avatar-container"><img
										src="https://dungmori.com/assets/img/default-avatar.jpg"
										class="avatar"> <!----> </a>
									<div class="comment-content">
										<p class="name">
											<!---->
											<b data-fancybox="" data-src="#user-profile-popup"
												href="javascript:;" class="red">
												${comment.users.fullName} </b> <span>${comment.content}</span>
										</p>
										<!---->
										<p class="comment-action">
											<a role="button" data-toggle="collapse" href="#reply-345115"
												aria-expanded="true" aria-controls="reply-345115"
												class="load-more-reply"><i class="zmdi zmdi-comments"></i>
												1 phản hồi </a>
											<!---->
											• <span class="time">${comment.createDate}</span>
										</p>
										<div class="reply-container">
											<div id="reply-345115" class="collapse in"
												aria-expanded="true" style="">
												<div id="reply-item-345117" class="child-comment-item">
													<a data-fancybox="" data-src="#user-profile-popup"
														href="javascript:;" class="pull-left avatar-container"><img
														src="https://dungmori.com/assets/img/dmr-square-logo.png"
														class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
													<!---->
													<div class="comment-content">
														<p class="child-name">
															<b data-fancybox="" data-src="#user-profile-popup"
																href="javascript:;" class="red">Thầy Qui JR </b>
															<!---->
															<span id="child-comment-content-345117">Ok. Cảm ơn em nhé. 😊</span>
														</p>
														<!---->
														<p class="child-comment-action">
															<span class="time">24/07/2021 14:49</span>
															<!---->
														</p>
													</div>
													<!---->
												</div>

											</div>
										</div>
										<!---->
								</li>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="main_right">
			<!-- main_right -->

			<a href="list_course.html">
				<div class="see_more"
					style="background-color: #69aa00; color: #ffff;">
					Đây Là Khóa Học Miễn phí <i
						style="font-size: 11px; margin-left: 4px;"
						class="fa fa-arrow-right"></i>
				</div>
			</a> <a href="<c:url value="/course"/>">
				<div class="see_more">
					Xem thêm các khóa học khác <i
						style="font-size: 11px; margin-left: 4px;"
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
								<a href="#panel${chapter.id}"> <strong
									style="font-size: 14px;">${chapter.chapterName}</strong>
								</a>
							</div>
							<div class="panel_collapse">
								<ul class="scroll_items">
									<c:forEach items="${chapter.lessions}" var="lession"
										varStatus="loop1">
										<li class="lesson_item"><a
											href="<c:url value="/course-${courses.id}/lession-${lession.id}"/>">
												<span
												style="display: block; width: 10px; height: 10px; border-radius: 100%; background: #eee; margin-right: 10px;"></span>
												<span style="flex: 1;">${lession.lessionName}</span>
												<div>
													<span class="study_free">Học thử</span>
												</div>
										</a></li>
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