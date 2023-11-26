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
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	$('button').on("click",function(e){
		e.prventDefault();
		var operation=$(this).data("oper");
		console.log(operation);
		if(operation === 'remove'){
			formObj.attr("action","/board.remove");
		}else if(operation ==='list'){
			self.location="/board/list";
			return;
		}
		formObj.submit();
	})
})



</script>
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
					<form role="form" action="/board/modify" method="post">
						<div class="form-group">
							<label>Bno</label> <input class="form-control" name='bno'
							value='<c:out value="${board.bno }"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>Title</label> <input class="form-control" name='title'
							value='<c:out value="${board.title }"/>' >
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
						
						<div class="form-group">
							<label>RegDate</label> 
							<input class="form-control"  name='regDate'
							value='<fmt:formatDate pattern="yyyy/MM/dd" value = "$board.regdate}" />' readonly="readonly">
						</div>
						<div class="form-group">
							<label>Update Date</label> 
							<input class="form-control"  name='updateDate'
							value='<fmt:formatDate pattern="yyyy/MM/dd" value = "$board.updateDate}" />' readonly="readonly">
						</div>
						
						<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
						<button type="submit" data-oper='remove' class="btn btn-default">Remove</button>
						<button type="submit" data-oper='list' class="btn btn-default">List</button>
						
						
						
					
						</div>
						


				
				</div>
			</div>

		</div>
	<%@include file="../includes/footer.jsp" %>

</body>
</html>