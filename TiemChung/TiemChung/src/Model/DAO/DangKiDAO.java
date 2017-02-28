package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Bean.LichDatTiem;



public class DangKiDAO {
	private static final String DateTime = null;
	String url = "jdbc:sqlserver://SNAIL\\SQLEXPRESS:1433;databaseName=FPT";
	String userName = "sa";
	String password = "12345678";
	Connection cn;

	public void KetNoi() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		cn = DriverManager.getConnection(url, userName, password);
		System.out.println("Ket noi thanh cong");
	}
	
	public int datLichTiem(String ngayDat, int maKH, int maVacxin) throws Exception{
		KetNoi();
		String query = "INSERT INTO DangKi VALUES(?,?,?,?)";
		PreparedStatement ps  = cn.prepareStatement(query);
		ps.setObject(3, ngayDat);
		ps.setInt(1, maKH);
		ps.setInt(2, maVacxin);
		ps.setInt(4, 0);
		return ps.executeUpdate();
	}
	public int getSoLuongVacXin(int maVacxin) throws Exception{
		KetNoi();
		String query = "select  COUNT(MaVacxin) AS SoLuong from DangKi where MaVacxin = ? AND TrangThai = 0 Group by MaVacxin";
		int soLuong = 0;
		PreparedStatement ps = cn.prepareStatement(query);
		ps.setInt(1,maVacxin);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			soLuong = rs.getInt("SoLuong");
			return soLuong;
		}
		return soLuong;
	}
	public int getSoLuongVacxinHienCo(int maVacxin) throws Exception{
		KetNoi();
		String query = "select Soluong from View_4 where MaVacxin = ?";
		int soLuong = 0;
		PreparedStatement ps = cn.prepareStatement(query);
		ps.setInt(1,maVacxin);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			soLuong = rs.getInt("SoLuong");
			return soLuong;
		}
		return soLuong;
	}
	
	public int getLichDat(int makh)throws Exception{
		KetNoi();
		String ngayhientai =DateTime.toString();
		String sql="select MaVacxin from DangKi where NgayDat='"+ngayhientai+"' and TrangThai='0' and MaKH='"+makh+"'";
		PreparedStatement cmd = cn.prepareStatement(sql);
		ResultSet rs= cmd.executeQuery();
		int mavacxin= 0;
		while(rs.next()){
			mavacxin = rs.getInt("MaVacxin");
			return mavacxin;
		}
		return mavacxin;
	}
}
