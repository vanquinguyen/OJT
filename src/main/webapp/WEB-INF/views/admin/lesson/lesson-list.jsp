<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
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

					<a href="<c:url value="/lesson/add"/>" class="btn btn-app"><i
						class="fa fa-plus"></i>Add</a>
					<div class="container">
						<form:form modelAttribute="searchForm" cssClass="form-horizontal form-label-left" servletRelativeAction="/lesson/list/1" method="POST" >
						</form:form>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table table-striped jambo_table bulk_action">
						<thead>
							<tr class="headings">
								<th class="column-title">#</th>
								<th class="column-title">Id</th>
								<th class="column-title">Lesson Name</th>
								<th class="column-title">URL Video</th>
								<th class="column-title">Content</th>
								<th class="column-title">Status</th>
								<th class="column-title">Chapter</th>
								<th class="column-title no-link last text-center" colspan="3"><span
									class="nobr">Action</span></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${lessions}" var="lession" varStatus="loop">

								<c:choose>
									<c:when test="${loop.index%2==0}">
										<tr class="even pointer" />
									</c:when>
									<c:otherwise>
										<tr class="odd pointer" />
									</c:otherwise>
								</c:choose>

								<td class=" ">${pageInfo.getOffset()+loop.index+1}</td>
								<td class=" ">${lession.id}</td>
								<td class=" ">${lession.lessionName}</td>
								<td class=" ">${lession.urlVideo}</td>
								<td class=" ">${lession.content}</td>
								<td class=" "><img alt="Image of Product" src="<c:url value="${lession.status}"/>" width="100px" height="100px"/></td> 
								<td class=" ">${lession.chapter.chapterName}</td>
								<td class="text-center"><a
									href="<c:url value="/lesson/view/${lession.id}"/>"
									class="btn btn-round btn-secondary">View</a></td>
								<td class="text-center"><a
									href="<c:url value="/lesson/edit/${lession.id}"/>"
									class="btn btn-round btn-primary">Edit</a></td>
								<td class="text-center"><a href="javascript:void(0);"
									onclick="confirmDelete(${lession.id});"
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
		 	window.location.href = '<c:url value="/lesson/delete/"/>'+id;
	 	}
	}
	function gotoPage(page){
		 $('#searchForm').attr('action','<c:url value="/lesson/list/"/>'+page);
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