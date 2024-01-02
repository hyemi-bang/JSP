package chap07_T.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {

	static {
		try { 
			 Class.forName("oracle.jdbc.driver.OracleDriver"); 
		  } catch (ClassNotFoundException e) { 
		  		e.printStackTrace();
		   }
	}
	
	public static Connection getConnetion() throws SQLException {
		return DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
	}
}
