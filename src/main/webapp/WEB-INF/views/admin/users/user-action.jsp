<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>${titlePage}</h1>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 ">
				<div class="x_panel">
					<div class="x_content">
						<br />
						<form:form modelAttribute="modelForm" servletRelativeAction="/user/save" cssClass="form-horizontal form-label-left" method="POST">
							<form:hidden path="id"/>
							<form:hidden path="createDate" />
							<form:hidden path="updateDate" />
							<%-- <form:hidden path="password"/> --%>
							<form:hidden path="activeFlag"/>
							<!--Full Name-->
							<div class="item form-group">
								<label for="fullName"
									class="col-form-label col-md-3 col-sm-3 label-align">Full
									Name<span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 ">
									<form:input path="fullName"
										cssClass="form-control col-md-7 col-xs-12"
										disabled="${viewOnly}" />
								 	<div class="has-error" style="color: red;">
										<form:errors path="fullName" cssClass="help-block"></form:errors>
									</div> 
								</div>
							</div>
							<!--User Name-->
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="userName"> User Name<span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12 ">
									<form:input path="userName"
										cssClass="form-control col-md-7 col-xs-12 "
										disabled="${viewOnly}" />
									 <div class="has-error" style="color: red;">
										<form:errors path="userName" cssClass="help-block"></form:errors>
									 </div> 
								</div>
							</div>
							
							<!--Role-->
							<div class="item form-group">

								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="roleID">Role <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">

									<form:select path="roleID"
										cssClass="form-control col-md-7 col-xs-12"
										disabled="${viewOnly}">
										<form:options items="${mapRole}" />
									</form:select>
									<div class="has-error" style="color: red;">
										<form:errors path="roleID" cssClass="help-block"></form:errors>
									</div>
									<%-- <c:otherwise>
											<form:input path="category.name" disabled="true" cssClass="form-control col-md-7 col-xs-12"/>
										</c:otherwise> --%>
								</div>

							</div>
							<!--Email-->
							<div class="item form-group">
									<label class="col-form-label col-md-3 col-sm-3 label-align"
										for="email">Email<span class="required"></span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12 ">
										<form:input path="email"
											cssClass="form-control col-md-7 col-xs-12 "
											disabled="${viewOnly}" />
										<div class="has-error" style="color: red;">
											<form:errors path="email" cssClass="help-block"></form:errors>
										</div>
									</div>
								</div>
							<!--phoneNumber-->
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="phoneNumber"> Phone Number<span class="required"></span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12 ">
									<form:input path="phoneNumber"
										cssClass="form-control col-md-7 col-xs-12 "
										disabled="${viewOnly}" />
									<div class="has-error" style="color: red;">
										<form:errors path="phoneNumber" cssClass="help-block"></form:errors>
									</div>
								</div>
							</div>
							<!--Password-->
							<c:if test="${!editMode}">
								<div class="item form-group">
									<label class="col-form-label col-md-3 col-sm-3 label-align"
										for="password">Password<span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12 ">
										<form:password path="password" 
											cssClass="form-control col-md-7 col-xs-12 "
											disabled="${viewOnly}" />
										<div class="has-error" style="color: red;">
											<form:errors path="password" cssClass="help-block"></form:errors>
										</div>
									</div>
								</div>
							</c:if>
							<!--address-->
							<div class="item form-group">
									<label class="col-form-label col-md-3 col-sm-3 label-align"
										for="address">Address<span class="required"></span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12 ">
										<form:input path="address"
											cssClass="form-control col-md-7 col-xs-12 "
											disabled="${viewOnly}" />
										<div class="has-error" style="color: red;">
											<form:errors path="address" cssClass="help-block"></form:errors>
										</div>
									</div>
								</div>
							<!--  -->
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
	$(document).ready(function(){
		$('#userlistId').addClass('current-page').siblings().removeClass('current-page');
		var parent = $('#userlistId').parent('li');
		parent.addClass('active').siblings().removeClass('active');
		$('#userlistId').parent().show();
	});
	function cancel() {
		window.location.href = '<c:url value="/user/list"/>'
	}
</script>

