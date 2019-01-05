package dao;

import pojo.Book;
import pojo.Employee;
import java.sql.*;
import java.util.ArrayList;

import static utils.DatabaseUtils.*;
public class DaoController implements DaoInterface {
	private Connection cn;
	private PreparedStatement ps;
	private PreparedStatement ps1;
	private PreparedStatement ps2;
	
	public DaoController() throws Exception {
	
		cn=dbUtils();
		ps=cn.prepareStatement("select * from employee where email=? and password=?");
		ps1=cn.prepareStatement("select distinct category from dac_books");
		ps2=cn.prepareStatement("select * from dac_books where category=?");
	}
	public void cleanUp() throws Exception
	{
		if(ps!=null)
			ps.close();
		if(cn!=null)
			cn.close();
	}

	@Override
	public Employee validateUser(String email,String password) throws Exception
	{
		Employee e=null;
		ps.setString(1,email);
		ps.setString(2, password);
		try(ResultSet rs=ps.executeQuery())
		{
			if(rs.next())
			{
				e=new Employee(rs.getInt(1),email,password,rs.getDouble(4),rs.getDate(5));
				return e;
			}

		}
		return e;
	}
	@Override
	public ArrayList<String> getBookCategory() throws Exception
	{
		ArrayList<String> b=new ArrayList<>();
		try(ResultSet rs=ps1.executeQuery())
		{
			while(rs.next())
			{
				b.add(rs.getString(1));
			}
		}
		return b;
	}
	public ArrayList<Book> bookDetails(String category) throws Exception
	{
		ps2.setString(1, category);
		ArrayList<Book> d=new ArrayList<>();
		try(ResultSet rs=ps2.executeQuery())
		{
			while(rs.next())
				d.add(new Book(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5)));
		}
		return d;
	}
}
