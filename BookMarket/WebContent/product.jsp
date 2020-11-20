<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository" %>
<%@ page errorPage="exceptonNoBookId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>도서 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
	BookRepository dao = BookRepository.getInstance();
	Book book = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
					<img src="C:/Users/kimdongwan/eclipse-workspace/BookMarket/WebContent/resources/images/<%=book.getFilename()%>" style="width: 100%">
			</div>
			
			<div class="col-md-8">
				<h3><%="[" + book.getCategory() + "] " + book.getName()%> </h3>
				<p><%=book.getDescription()%>
				<p>
					<b>도서 코드 : </b><span class="badge badge-danger"> <%=book.getBookId()%></span>
				<p>
					<b>저자</b> :
					<%=book.getAuthor()%>
				<p>
					<b>출판사</b> :
					<%=book.getPublisher()%>
				<p>
					<b>출판일</b> :
					<%=book.getReleaseDate()%>	
				<p>
					<b>총 페이지 수</b> :
					<%=book.getTotalPages()%>
				<p>
					<b>재고 수</b> :
					<%=book.getUnitsInStock()%>
				<h4><%=book.getUnitPrice()%>원</h4>
				<p>
					<a href="#" class="btn btn-secondary"> 도서주문 &raquo;</a> <a href="./books.jsp" class="btn btn-secondary"> 도서목록 &raquo;</a>
			</div>
		</div>
		<hr>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>