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
						<form:form modelAttribute="modelForm" cssClass="form-horizontal form-label-left" servletRelativeAction="/lesson/save" method="POST"
							enctype="multipart/form-data">
							<form:hidden path="id" />
							<form:hidden path="createDate" />
							<form:hidden path="activeFlag" /> 
							 <form:hidden path="content" />
							 <form:hidden path="status"/>
							 
							<div class="item form-group">

								<label class="col-form-label col-md-3 col-sm-3 label-align" for="chapterId"> Chapter<span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12 ">
									<c:choose>
										<c:when test="${!viewOnly}">
											<form:select path="chapterId"
												cssClass="form-control col-md-7 col-xs-12">
												<form:options items="${mapChapters}" />
											</form:select>
											<div class="has-error" style="color: red;">
												<form:errors path="chapterId" cssClass="help-block"></form:errors>
											</div>
										</c:when>
										<c:otherwise>
											<form:input path="chapter.chapterName" disabled="true" cssClass="form-control col-md-7 col-xs-12 "/>
										</c:otherwise>
									</c:choose>
								</div>
							</div>

							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="lessionName"> Lesson Name<span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12 ">
									<form:input path="lessionName"
										cssClass="form-control col-md-7 col-xs-12 "
										disabled="${viewOnly}" />
									<div class="has-error" style="color: red;">
										<form:errors path="lessionName" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div>
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="urlVideo">URL Video <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<form:input path="urlVideo"
										cssClass="form-control col-md-7 col-xs-12 "
										disabled="${viewOnly}" />
									<div class="has-error" style="color: red;">
										<form:errors path="urlVideo" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div> 
							<c:if test="${!viewOnly}">
								<div class="item form-group">
									<label for="multipartFile"
										class="col-form-label col-md-3 col-sm-3 label-align">
										Content </label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<form:input path="multipartFile"
											cssClass="form-control col-md-7 col-xs-12" type="file" />
										<div class="has-error">
											<form:errors path="multipartFile" cssClass="help-block"></form:errors>
										</div>
									</div>
								</div>

							</c:if>
							<c:if test="${!viewOnly}">
								<div class="item form-group">
									<label for="multipartFile"
										class="col-form-label col-md-3 col-sm-3 label-align">
										Status </label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<form:input path="multipartFiles"
											cssClass="form-control col-md-7 col-xs-12" type="file" />
										<div class="has-error">
											<form:errors path="multipartFile" cssClass="help-block"></form:errors>
										</div>
									</div>
								</div>

							</c:if>
							
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
				$('#lessonlistId').addClass('current-page').siblings()
						.removeClass('current-page');
				var parent = $('#lessonlistId').parents('li');
				parent.addClass('active').siblings().removeClass('active');
				$('#lessonlistId').parents().show();
			});
	function cancel() {
		window.location.href = '<c:url value="/lesson/list"/>'
	}
</script>