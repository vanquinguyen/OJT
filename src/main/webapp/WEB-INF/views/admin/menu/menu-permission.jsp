<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
						<form:form modelAttribute="modelForm"
							cssClass="form-horizontal form-label-left"
							servletRelativeAction="/menu/update-permission" method="POST">


							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									>Role Name <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<form:select path="roleId" cssClass="form-control col-md-7 col-xs-12" >
										<form:options items="${mapRole}" />
									</form:select>
								</div>
							</div>
							<div class="item form-group">
								<label 
									class="col-form-label col-md-3 col-sm-3 label-align">Menu<span
									class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<form:select path="menuId" cssClass="form-control col-md-7 col-xs-12" >
										<form:options items="${mapMenu}" />
									</form:select>
								</div>
							</div>
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="permission" > Permission <span class="required">*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<form:radiobutton path="permission" value="1" />
									Yes
									<form:radiobutton path="permission" value="0" />
									No
								</div>
							</div>
							<div class="ln_solid"></div>
							<div class="item form-group">
								<div class="col-md-6 col-sm-6 offset-md-3">
									<button class="btn btn-primary" type="button"
										onclick="cancel();">Cancel</button>
										<button type="submit" class="btn btn-success">Submit</button>
									
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
				$('#menulistId').addClass('current-page').siblings()
						.removeClass('current-page');
				var parent = $('#menulistId').parents('li');
				parent.addClass('active').siblings().removeClass('active');
				$('#menulistId').parents().show();
			});
	function cancel() {
		window.location.href = '<c:url value="/menu/list"/>'
	}
</script>