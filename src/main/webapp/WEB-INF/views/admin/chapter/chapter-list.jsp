<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="right_col" role="main">
	<div class="">
		<div class="clearfix"></div>

		<div class="">
			<div class="x_panel">
				<div class="x_title">
					<h2>Chapter List</h2>
					<div class="clearfix"></div>
				</div>

				<div class="x_content">

					<a href="<c:url value="/chapter/add"/>" class="btn btn-app"><i
						class="fa fa-plus"></i>Add</a>
					<div class="container">
						<form:form modelAttribute="searchForm"
							cssClass="form-horizontal form-label-left"
							servletRelativeAction="/chapter/list/1" method="POST">
							<div class="item form-group">
								<label class="col-form-label col-md-3 col-sm-3 label-align"
									for="chapterName">Chapter Name </label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<form:input path="chapterName"
										cssClass="form-control col-md-7 col-xs-12 " />
								</div>
							</div>

							<div class="item form-group">
								<div class="col-md-6 col-sm-6 offset-md-3">
									<button type="submit" class="btn btn-success">Search</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table table-striped jambo_table bulk_action">
						<thead>
							<tr class="headings">
								<th class="column-title">#</th>
								<th class="column-title">Id</th>
								<th class="column-title">Chapter Name</th>
								<th class="column-title">Course Name</th>
								<th class="column-title no-link last text-center" colspan="3"><span
									class="nobr">Action</span></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${chapterList}" var="chapter" varStatus="loop">

								<c:choose>
									<c:when test="${loop.index%2==0}">
										<tr class="even pointer" />
									</c:when>
									<c:otherwise>
										<tr class="odd pointer" />
									</c:otherwise>
								</c:choose>

								<td class=" ">${pageInfo.getOffset()+loop.index+1}</td>
								<td class=" ">${chapter.id}</td>
								<td class=" ">${chapter.chapterName}</td>
								<td class=" ">${chapter.course.courseName}</td>
								
								<td class="text-center"><a
									href="<c:url value="/chapter/view/${chapter.id}"/>"
									class="btn btn-round btn-secondary">View</a></td>
								<td class="text-center"><a
									href="<c:url value="/chapter/edit/${chapter.id}"/>"
									class="btn btn-round btn-primary">Edit</a></td>
								<td class="text-center"><a href="javascript:void(0);"
									onclick="confirmDelete(${chapter.id});"
									class="btn btn-round btn-danger">Delete</a></td>
							</c:forEach>
						</tbody>
					</table>
					<jsp:include page="../adminLayout/paging.jsp"></jsp:include>
				</div>

			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function confirmDelete(id){
	 	if(confirm('Do you want delete this record?')){
		 	window.location.href = '<c:url value="/chapter/delete/"/>'+id;
	 	}
	}
	function gotoPage(page){
		 $('#searchForm').attr('action','<c:url value="/chapter/list/"/>'+page);
		 $('#searchForm').submit();
	 }
	$(document).ready(function(){
		processMesseage();
	});
	function processMesseage(){
		var msgSuccess = '${msgSuccess}';
		var msgError = '${msgError}';
		if(msgSuccess){
			new PNotify({
                title: 'Success',
                text: msgSuccess,
                type: 'success',
                styling: 'bootstrap3'
            });
		}
		if(msgError){
			new PNotify({
                title: 'Error',
                text: msgError,
                type: 'error',
                styling: 'bootstrap3'
            });
		}
	}
</script>