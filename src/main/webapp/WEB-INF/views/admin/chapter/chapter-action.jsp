<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h2>${titlePage}</h2>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 ">
				<div class="x_panel">
					<div class="x_content">
						<br />
						<form:form modelAttribute="modelForm" cssClass="form-horizontal form-label-left" servletRelativeAction="/chapter/save" method="POST">
							<form:hidden path="id"/>
							<form:hidden path="activeFlag"/>
							<form:hidden path="createDate"/>
							<form:hidden path="updateDate"/>		
												
							<div class="item form-group">

								<label class="col-form-label col-md-3 col-sm-3 label-align" for="courseId"> Course<span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12 ">
									<c:choose>
										<c:when test="${!viewOnly}">
											<form:select path="courseId"
												cssClass="form-control col-md-7 col-xs-12">
												<form:options items="${mapCourses}" />
											</form:select>
											<div class="has-error" style="color: red;">
												<form:errors path="courseId" cssClass="help-block"></form:errors>
											</div>
										</c:when>
										<c:otherwise>
											<form:input path="course.courseName" disabled="true" cssClass="form-control col-md-7 col-xs-12 "/>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<!-- Chapter Name -->
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="chapterName">Chapter Name <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<form:input path="chapterName"
										cssClass="form-control col-md-7 col-xs-12 "
										disabled="${viewOnly}" />
									<div class="has-error" style="color: red;">
										<form:errors path="chapterName" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div>
							
							<div class="ln_solid"></div>
							<div class="item form-group">
								<div class="col-md-6 col-sm-6 offset-md-3">
									<button class="btn btn-primary" type="button"
										onclick="cancel();">Cancel</button>
									<c:if test="${!viewOnly}">
										<button class="btn btn-primary" type="reset">Reset</button>
										<button type="submit" class="btn btn-success">Submit</button>
									</c:if>
								</div>
							</div>

						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#chapterlistId').addClass('current-page').siblings()
						.removeClass('current-page');
				var parent = $('#chapterlistId').parents('li');
				parent.addClass('active').siblings().removeClass('active');
				$('#chapterlistId').parents().show();
			});
	function cancel() {
		window.location.href = '<c:url value="/chapter/list"/>'
	}
</script>