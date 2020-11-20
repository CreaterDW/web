package dao;
import dto.Book;

import java.util.ArrayList;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book HTML5 = new Book("B0001","HTML5+CSS3",15000);
		HTML5.setAuthor("Ȳ��ȣ");
		HTML5.setCategory("Hello Coding");
		HTML5.setDescription("���峪 PPT������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ� �����غ�����. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ����ȭ���� �ٷ� ������ ����...");
		HTML5.setPublisher("�Ѻ��̵��");
		HTML5.setUnitsInStock(100);
		HTML5.setTotalPages(350);
		HTML5.setReleaseDate("2018-10-02");
		HTML5.setFilename("html5.jpg");
		
		Book Java = new Book("B0002","���� ���� �ڹ� ���α׷���",27000);
		Java.setAuthor("������");
		Java.setCategory("IT�����");
		Java.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭�� �ʺ��ڰ� ���� �н��� �� �ְ� �����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ����...");
		Java.setPublisher("�Ѻ���ī����");
		Java.setUnitsInStock(100);
		Java.setTotalPages(300);
		Java.setReleaseDate("2016-03-18");
		Java.setFilename("java.jpg");
		
		Book Spring = new Book("B0003","������4 �Թ�",27000);
		Spring.setAuthor("�ϼ����� ����ġ, ������ ��Ÿ��, ��Ű ������(����ö, ���μ�)");
		Spring.setCategory("IT�����");
		Spring.setDescription("�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű��ó�� ��� �����ϰ� �����ϴ����� �� �߿��մϴ�. ������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ�...");
		Spring.setPublisher("�Ѻ��̵��");
		Spring.setUnitsInStock(100);
		Spring.setTotalPages(500);
		Spring.setReleaseDate("2017-05-11");
		Spring.setFilename("������.jpg");
		
		listOfBooks.add(HTML5);
		listOfBooks.add(Java);
		listOfBooks.add(Spring);
	}
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
	public Book getProductById(String BookId) {
		Book BookById = null;
		
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);

			if (book != null && book.getBookId() != null && book.getBookId().equals(BookId))
			{
				BookById = book;
				break;
			}
		}
		return BookById;
	}
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
