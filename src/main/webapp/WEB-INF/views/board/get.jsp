<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Board Read</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Board Read Page</div>
				<div class="panel-body">
					<form role="form" action="/board/register" method="post">
						<div class="form-group">
							<label>Bno</label> <input class="form-control" name='bno'
							value='<c:out value="${board.bno }"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>Title</label> <input class="form-control" name='title'
							value='<c:out value="${board.title }"/>' readonly="readonly">
						</div>
						
						
						<div class="form-group">
							<label>Text area</label> 
							<textarea class="form-control" rows="3" name='content'
							readonly="readonly"><c:out value="${board.content }"/></textarea>
						</div>
						
						<div class="form-group">
							<label>Writer</label> 
							<input class="form-control"  name='writer'
							value='<c:out value="${board.writer }"/>' readonly="readonly">
						</div>
						
						<button data-oper='modify' class="btn btn-default">Modify</button>
						<button data-oper='list' class="btn btn-info">List</button>
						
					
						</div>
						


				
				</div>
			</div>

		</div>
	<%@include file="../includes/footer.jsp" %>

</body>
</html>