package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Bean.KhachHang;
import Model.Bean.QuanLyTiemChung;

public class KhachHangDAO {
	
	Connection cn = null;
	public Connection getConection () throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        cn= DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=FPT;user=sa;password=12345678");
        return cn;
	}
	public ArrayList<KhachHang> getKhachHang()throws Exception{
		getConection();
		ArrayList<KhachHang > list = new ArrayList<KhachHang>();
		String sql = "select * from KhachHang";
		PreparedStatement statement = cn.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		while(rs.next()){
			int maKH = rs.getInt("MaKH");
			String tenKH = rs.getString("TenKH");
			int tuoi = rs.getInt("Tuoi");
			boolean gioiTinh = rs.getBoolean("GioiTinh");
			String email = rs.getString("Email");
			String soDT = rs.getString("SoDT");
			String diaChi = rs.getString("DiaChi");
			KhachHang kh = new KhachHang(maKH,tenKH, tuoi, gioiTinh, soDT, diaChi, email);
			list.add(kh);
		}
		rs.close();
		cn.close();
		return list;
	}
	
	public KhachHang getKhachHang(int maKH)throws Exception{
		getConection();
		KhachHang kh = null;
		String sql = "select *from KhachHang where MaKH="+maKH+"";
		PreparedStatement statement = cn.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		while(rs.next()){
			int maKH1 = rs.getInt("MaKH");
			String tenKH = rs.getString("TenKH");
			int tuoi = rs.getInt("Tuoi");
			boolean gioiTinh = rs.getBoolean("GioiTinh");
			String soDT = rs.getString("SoDT");
			String diaChi = rs.getString("DiaChi");
			String email = rs.getString("Email");
			kh =new KhachHang(maKH1, tenKH, tuoi, gioiTinh, soDT, diaChi, email);
		}
		rs.close();
		cn.close();
		
		return kh;
	}
	
	public int themKhachHang(String tenKH, int tuoi, boolean gioiTinh,String soDT, String diaChi, String email) throws Exception{
		getConection();
		String sql = "insert into Khachhang values (?,?,?,?,?,?)";
		PreparedStatement statement = cn.prepareStatement(sql);
		statement.setString(1, tenKH);
		statement.setInt(2, tuoi);
		statement.setBoolean(3, gioiTinh);
		statement.setString(4, soDT);
		statement.setString(5, diaChi);
		statement.setString(6, email);
		return statement.executeUpdate();
		
	}
	public int suaKhachHang(int maKH ,String tenKH, int tuoi, boolean gioiTinh,String soDT, String diaChi, String email) throws Exception{
		getConection();
		String sql = "update KhachHang set TenKH =N'"+tenKH+"', Tuoi = ?, GioiTinh =?, SoDT=?, DiaChi=?, Email=? where MaKH=?";
		
		PreparedStatement statement = cn.prepareStatement(sql);

		statement.setInt(1, tuoi);
		statement.setBoolean(2, gioiTinh);
		statement.setString(3, soDT);
		statement.setString(4, diaChi);
		statement.setString(5, email);
		statement.setInt(6, maKH);
		return statement.executeUpdate();
	}
	
	public int xoaKhachHang(String maKH)throws Exception{
		getConection();
		String sql ="delete from KhachHang where MaKH = ?";
		PreparedStatement statement = cn.prepareStatement(sql);
		statement.setString(1, maKH);
		return statement.executeUpdate();
	}
	
	public ArrayList<KhachHang> timKiemKhachHang(String tenKH)throws Exception{
		getConection();
		String sql ="select * from KhachHang where TenKH like N'%"+tenKH+"%'";
		ArrayList<KhachHang > list = new ArrayList<KhachHang>();
		PreparedStatement statement = cn.prepareStatement(sql);
		ResultSet rs = statement.executeQuery();
		while(rs.next()){
			int maKH = rs.getInt("MaKH");
			String tenKH1 = rs.getString("TenKH");
			int tuoi = rs.getInt("Tuoi");
			boolean gioiTinh = rs.getBoolean("GioiTinh");
			String email = rs.getString("Email");
			String soDT = rs.getString("SoDT");
			String diaChi = rs.getString("DiaChi");
			KhachHang kh = new KhachHang(maKH,tenKH1, tuoi, gioiTinh, soDT, diaChi, email);
			list.add(kh);
		}
		rs.close();
		cn.close();
		return list;
	}


}
