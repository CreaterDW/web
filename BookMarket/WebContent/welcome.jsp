<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Welcome</title>
</head>
<body>

	<%!String ShopName = "���� �� ���θ�";%>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<h1><%=ShopName%></h1>
				<hr>
			<p>
			<a href="books.jsp" class="btn btn-secondary"> ���� ��� &raquo;</a>
		</p>
				
			</h1>
		</div>
		
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>