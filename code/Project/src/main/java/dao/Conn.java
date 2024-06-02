package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Conn {
	private Connection conn;
	private ResultSet rs;
	
	public Conn() {
		try {
			String db = "jdbc:mysql://localhost:3306/board_data";
			String id = "root";
			String pw = "password";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(db, id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getDate() {
		String sql = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public int getNext() {
		String sql = "SELECT NUM FROM BOARD ORDER BY NUM DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int write(String name, String subject, String content) {
		String sql = "INSERT INTO BOARD VALUES (?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, getNext());
			pstmt.setString(2, name);
			pstmt.setString(3, subject);
			pstmt.setString(4, content);
			pstmt.setString(5, getDate());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<DataEntity> getList(int pageNum) {
		String sql = "SELECT * FROM BOARD WHERE NUM < ? ORDER BY NUM DESC";
		ArrayList<DataEntity> list = new ArrayList<DataEntity>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNum - 1) * 10);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				DataEntity de = new DataEntity();
				de.setNum(rs.getInt(1));
				de.setName(rs.getString(2));
				de.setSubject(rs.getString(3));
				de.setContent(rs.getString(4));
				de.setDate(rs.getString(5));
				list.add(de);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
