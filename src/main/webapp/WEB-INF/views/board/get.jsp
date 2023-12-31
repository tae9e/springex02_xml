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

	<form id='operForm' action="/board/modify" method="get">
		<input type='hidden' id='bno' name='bno'
			value='<c:out value="${board.bno }"/>'> 
			<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'> 
			<input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'> 
			<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
	</form>

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
								readonly="readonly"><c:out value="${board.content }" /></textarea>
						</div>

						<div class="form-group">
							<label>Writer</label> <input class="form-control" name='writer'
								value='<c:out value="${board.writer }"/>' readonly="readonly">
						</div>
						</form>

						<button data-oper='modify' 
						class="btn btn-default"
						onclick="location.href='/board/modify?bno=<c:out value="${board.bno }"/>'">Modify</button>
						<button data-oper='list' 
						class="btn btn-info"
						onclick="location.href='/board/list'">
						List</button>
				</div>

				


			</div>
		</div>

	</div>

	<%@include file="../includes/footer.jsp"%>

</body>
</html>