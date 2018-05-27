package bean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import util.DB;
public class User {
	private int id;
	private String username;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static ResultSet check(String username,String password)throws Exception{
		Connection conn = DB.getConn();
		String sql = "select * from user where username = '" + username + "'";
	    Statement stmt = DB.getStatement(conn);
	    ResultSet rest = DB.getResultSet(stmt, sql);
		return rest;
	}
}
