<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.BookRepository"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<%
			for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
		%>
		<div class="row">
			<div class="col-md-2">
				<img src="C:/Users/kimdongwan/eclipse-workspace/BookMarket/WebContent/resources/images/<%=book.getFilename()%>" style="width: 100%">
			</div>
			<div class="col-md-10">
				<div class="row">
					<h5>
						<b><%="[" + book.getCategory() + "] " + book.getName()%> </b>
					</h5>

				</div>
				<div class="row">
					<div class="col-md-8">
						<p><%=book.getDescription()%>
					</div>
					<div class="col-md-2">
						<a href="./product.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
					</div>
				</div>
				<div class="row">
					e<p><%=book.getAuthor() + " | " + book.getPublisher() + " | " + book.getUnitPrice() + "원"%>
				</div>

			</div>
		</div>
		<hr>
		<%
			}
		%>
	</div>

	

	<jsp:include page="footer.jsp" />
	</div>

</body>
</html>