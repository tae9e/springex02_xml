<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>

<html>
<body>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Tables</h1>
	</div>

</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board List Page</div>

			<div class="panel-body">
				<table width="100%"
					class="table table-striped table-bordered table-hover"
					id="dataTables-example">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
						</tr>
					</thead>
					<c:forEach items="${list }" var="board">
					<tr>
							<th><c:out value="${board.bno }" /></th>
							<th><c:out value="${board.title }" /></th>
							<th><c:out value="${board.writer }" /></th>
							<th><fmt:formatDate pattern="yyyy-MM-dd"
								value="${board.regdate }"/></th>
							<th><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}" /></th>
						</tr>
					</c:forEach>

				</table>
				<!-- /.table-responsive -->



			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-6 -->
	</div>
	<!-- /.row -->
	</div>
	<%@include file="../includes/footer.jsp"%>
	</body>

	</html>