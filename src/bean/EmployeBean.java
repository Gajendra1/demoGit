package bean;

import java.util.ArrayList;

import dao.DaoController;
import pojo.Book;
import pojo.Employee;
public class EmployeBean {
	private String email,password;
	private DaoController dao;
	private Employee details;
	private String message;
	private String bookcategory;
	private String[] books;
	private int id;
	
	public void setId(int id) {
		this.id = id;
	}

	public String getBookcategory() {
		return bookcategory;
	}

	public void setBookcategory(String bookcategory) {
		this.bookcategory = bookcategory;
	}

	public String getMessage() {
		return message;
	}

	public String[] getBooks() {
		return books;
	}

	public void setBooks(String[] books) {
		this.books = books;
	}

	public Employee getDetails() {
		return details;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
//default Constructor
	public EmployeBean() throws Exception {
		super();
		dao=new DaoController();
	}
	//Business Logic
	public String validate() throws Exception
	{
		details=dao.validateUser(email, password);
		if(details==null)
		{
		message="Invalid Login,Please Retry";
		return "login";
		}
	//	message="Login Successful";
		return "category";
	}	
	public ArrayList<String> category1() throws Exception
	{
		return dao.getBookCategory();
	}
	public ArrayList<Book> categoryBookDetails() throws Exception
	{
		return dao.bookDetails(bookcategory);
	}
	
}
