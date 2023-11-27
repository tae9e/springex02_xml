<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>

<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	var result = '<c:out value="${result}"/>';

	checkModal(result);
	history.replaceState({},null,null);
	
	function checkModal(result){
		if(result === '' || history.state ){
			return;
		}
		if(parseInt(result) > 0 {
			$(".modal-body").html("게시글 "+parseInt(result)+"번이 등록되었습니다.");
		}
		$("#myModal").modal("show");
	}
	$("#regBtn").on("click",function({
		self.location = "/board/register";
	});
					
		});

</script>
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
										value="${board.regdate }" /></th>
								<th><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.updateDate}" /></th>
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