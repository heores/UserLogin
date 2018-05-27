package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean.Stay;
import util.DB;
public class StayDao {
	//��ȡ�������Լ�¼
	public ArrayList<Stay> getAllStays(){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Stay> list=new ArrayList<Stay>();
		try{
			conn=DB.getConn();
			String sql="select * from stay";
			stmt=conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Stay stay=new Stay();
				stay.setId(rs.getInt("id"));
				stay.setName(rs.getString("name"));
				stay.setTitle(rs.getString("title"));
				stay.setContent(rs.getString("content"));
				list.add(stay);
			}
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
			}finally {
				// �ͷ����ݼ�����
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// �ͷ�������
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
	//�������
	public int insertStay(String name,String title,String content){
		Connection conn = null;
		PreparedStatement prst=null;
		int row=0;
		try{
				conn=DB.getConn();
				String sql="insert into stay(name,title,content)values(?,?,?)";
				prst=conn.prepareStatement(sql);
				prst.setString(1, name);
				prst.setString(2, title);
				prst.setString(3, content);
				row=prst.executeUpdate();
				return row;
	}catch(Exception e){
		e.printStackTrace();
		return row;
		}
	}
}
