package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	//��ȡ���ݿ�����
	public static Connection getConn(){
		Connection conn=null;
		try{
			String url="jdbc:mysql://localhost/student";
			String user="root";
			String password="";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
			if(conn!=null){
				System.out.println("���ݿ����ӳɹ���");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	//��ȡStatement
	public static Statement getStatement(Connection conn){
		Statement stmt=null;
		try{
			if(conn!=null){
				stmt=conn.createStatement();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return stmt;
	}
	//��ȡResultSet
	public static ResultSet getResultSet(Statement stmt, String sql){
		ResultSet rs = null;
		try {
			if(stmt != null) {
				rs = stmt.executeQuery(sql);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	//�û�ע��
	public static int insertUser(Connection conn,String name,String pwd){
		PreparedStatement prst=null;
		int row=0;
		try{
			if(conn!=null){
				String sql="insert into user(username,password)values(?,?)";
				prst=conn.prepareStatement(sql);
				prst.setString(1, name);
				prst.setString(2, pwd);
				row=prst.executeUpdate();
			}
		}catch(Exception e){
			e.printStackTrace();
		}return row;
	}
	//�ر����ݿ�����
	public static void close(Connection conn){
		try{
			if(conn!=null){
				conn.close();
				conn=null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//�ر�Statement����
	public static void close(Statement stmt){
		try{
			if(stmt!=null){
				stmt.close();
				stmt=null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//�ر�PreparedStatement����
	public static void close(PreparedStatement prst){
		try{
			if(prst!=null){
				prst.close();
				prst=null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//�ر�ResultSet����
	public static void close(ResultSet rest){
		try{
			if(rest!=null){
				rest.close();
				rest=null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
