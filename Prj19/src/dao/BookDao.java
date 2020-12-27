package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import vo.Book;

public class BookDao {
	private Connection conn = null;
	public HashMap getAllBook() throws Exception{		
		HashMap hm = new HashMap();
		this.initConnection();
		Statement stat = conn.createStatement();
		String sql = 
"SELECT BOOKNO,BOOKNAME,BOOKPRICE FROM T_BOOK";
		ResultSet rs = stat.executeQuery(sql);
		while(rs.next()){
			Book book = new Book();
			book = new Book();
			book.setBookno(rs.getString("bookno"));
			book.setBookname(rs.getString("bookname"));
			book.setBookprice(rs.getFloat("bookprice"));	
			hm.put(book.getBookno(),book);
		}
		this.closeConnection();
		return hm;		
	}	
	public void initConnection() throws Exception{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		conn = DriverManager.getConnection("jdbc:odbc:DSSchool", "", "");
	}
	public void closeConnection() throws Exception{
		conn.close();
	}
	
}
