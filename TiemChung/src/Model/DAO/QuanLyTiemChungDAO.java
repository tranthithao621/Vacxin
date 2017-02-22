package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Bean.QuanLyTiemChung;



public class QuanLyTiemChungDAO {

	String url = "jdbc:sqlserver://SNAIL\\SQLEXPRESS:1433;databaseName=FPT";
	String userName = "sa";
	String password = "123";
	Connection cn;

	public void KetNoi() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		cn = DriverManager.getConnection(url, userName, password);
		System.out.println("Ket noi thanh cong");
	}

	public ArrayList<QuanLyTiemChung> getKhachHang() throws Exception{
		
		KetNoi();
		String sql= "SELECT * FROM KhachHang ";
		
		PreparedStatement cmd = cn.prepareStatement(sql);
		ResultSet r = cmd.executeQuery();
		ArrayList<QuanLyTiemChung>ds= new ArrayList<QuanLyTiemChung>();
		while(r.next()){
			int maKH=r.getInt("MaKH"); 
			String tenKH=r.getString("TenKH");
			int tuoi =r.getInt("Tuoi");
			int gioiTinh=r.getInt("GioiTinh");
			String diaChi=r.getString("DiaChi");
			String sodt=r.getString("Sodt");
			String email=r.getString("Email");
			 QuanLyTiemChung qltc = new QuanLyTiemChung(maKH, tenKH, tuoi, gioiTinh, diaChi, sodt, email);
			 ds.add(qltc);	
	}
		r.close();
		cn.close();
		return ds;

	}
	public QuanLyTiemChung getKhachHangTheoMa(String tuKhoa) throws Exception{
		//Ket noi
		KetNoi();
		String sql= "SELECT * FROM KhachHang WHERE MaKH LIKE '"+tuKhoa+"'";
		PreparedStatement cmd = cn.prepareStatement(sql);
		ResultSet r = cmd.executeQuery();
		r.next();
		int maKH=r.getInt("MaKH"); 
		String tenKH=r.getString("TenKH");
		int tuoi =r.getInt("Tuoi");
		int gioiTinh=r.getInt("GioiTinh");
		String diaChi=r.getString("DiaChi");
		String sodt=r.getString("Sodt");
		String email=r.getString("Email");
		QuanLyTiemChung qltc = new QuanLyTiemChung(maKH, tenKH, tuoi, gioiTinh, diaChi, sodt, email);
		r.close();
		cn.close();
		return qltc;
		
	}
	public int MaxLanTiem(int makhachhang)throws Exception{
		KetNoi();
		String sql="select a=mAX(LanTiem) from LichSuTiemPhong  where MaKH='"+makhachhang+"'";
		PreparedStatement cmd=cn.prepareStatement(sql);
		ResultSet rs= cmd.executeQuery();
		int a= 0;
		if(rs.next()){
			a = rs.getInt("a");
			
		}
		return a;
	}
	
	public int layMaKhachHang(String tenKhachHang)throws Exception{
		System.out.println(tenKhachHang);
		String sql="select Makh from KhachHang  where TenKH=N'"+tenKhachHang+"'";
		PreparedStatement cmd=cn.prepareStatement(sql);
		ResultSet rs= cmd.executeQuery();
		int a= 0;
		if(rs.next()){
			a= rs.getInt("MaKH");
		}
		return a;
	}
}
