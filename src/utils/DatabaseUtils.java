package utils;

import java.sql.*;

public class DatabaseUtils {
	public static Connection dbUtils() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
	}
}
