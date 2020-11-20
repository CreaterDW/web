<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String filename ="";
	String realFolder ="C:/Users/kimdongwan/eclipse-workspace/BookMarket/WebContent/resources/images";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,encType, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String Author = multi.getParameter("author");
	String Publisher = multi.getParameter("publisher");
	String Date = multi.getParameter("date");
	String Pages = multi.getParameter("pages");
	String description = multi.getParameter("description");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	long pages = Long.valueOf(Pages);
	
	Enumeration files =multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newProduct = new Book();
	newProduct.setBookId(productId);
	newProduct.setName(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setAuthor(Author);
	newProduct.setPublisher(Publisher);
	newProduct.setReleaseDate(Date);
	newProduct.setTotalPages(pages);
	newProduct.setFilename(fileName);
	
	dao.addBook(newProduct);
	
	response.sendRedirect("books.jsp");
	%>
</body>
</html>