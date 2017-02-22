package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

import Model.Bean.Vacxin;

public class VacxinDAO {

	String url = "jdbc:sqlserver://SNAIL\\SQLEXPRESS:1433;databaseName=FPT";
	String userName = "sa";
	String password = "123";
	Connection cn;

	public void KetNoi() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		cn = DriverManager.getConnection(url, userName, password);
		System.out.println("Ket noi thanh cong");
	}

	ArrayList<Vacxin> ds = new ArrayList<Vacxin>();
	PreparedStatement cmd;
	
	public ArrayList<Vacxin> getVacxin() throws Exception {
		KetNoi();
		String sql = "select * from Vacxin";
		 cmd = cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {

			int maVacxin = rs.getInt("MaVacxin");
			String tenVacxin = rs.getString("TenVacxin");
			int maLoaiVacxin = rs.getInt("MaLoaiVacxin");
			int tuoiToiThieu = rs.getInt("TuoiToiThieu");
			int tuoiToiDa = rs.getInt("TuoiToiDa");
			int soMui = rs.getInt("SoMui");
			Vacxin v = new Vacxin(maVacxin, tenVacxin, maLoaiVacxin, tuoiToiThieu, tuoiToiDa, soMui);
			ds.add(v);

		}
		rs.close();
		cmd.close();
		return ds;
	}

	public boolean kiemTraTen(String tenvacxin) throws Exception {
		KetNoi();
		String sql = "select TenVacxin from Vacxin ";
		 cmd = cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String Tenvacxin = rs.getString("TenVacxin");
			if (Tenvacxin.toLowerCase().equals(tenvacxin.toLowerCase())) {
				return false;
			}
		}
		cmd.close();
		return true;
	}

	public int addVacxin(String tenvacxin, int tuoitoithieu, int tuoitoida, int somui ,int maloaivacxin) throws Exception {
		KetNoi();
		String sql = "insert into Vacxin (TenVacxin,TuoiToiThieu,TuoiToiDa,SoMui,MaLoaiVacxin) "
				+ "values (?,?,?,?,?)";
		cmd =cn.prepareStatement(sql);
		cmd.setString(1, tenvacxin);
		cmd.setInt(2, tuoitoithieu);
		cmd.setInt(3, tuoitoida);
		cmd.setInt(4, somui);
		cmd.setInt(5, maloaivacxin);
		
		return cmd.executeUpdate();
	}
	
	public Vacxin get1Vacxin(int mavacxin) throws Exception {
		KetNoi();
		String sql = "select * from Vacxin where Mavacxin='"+mavacxin+"'";
		cmd = cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		Vacxin v =null;
		if(rs.next()) {

			int maVacxin = rs.getInt("MaVacxin");
			String tenVacxin = rs.getString("TenVacxin");
			int maLoaiVacxin = rs.getInt("MaLoaiVacxin");
			int tuoiToiThieu = rs.getInt("TuoiToiThieu");
			int tuoiToiDa = rs.getInt("TuoiToiDa");
			int soMui = rs.getInt("SoMui");
			v = new Vacxin(maVacxin, tenVacxin, maLoaiVacxin, tuoiToiThieu, tuoiToiDa, soMui);
		}
		rs.close();
		cmd.close();
		return v;
	}
	
	public int EditVacxin(String tenvacxin, int tuoitoithieu, int tuoitoida, int somui ,int maloaivacxin ,int mavacxin)throws Exception{
		KetNoi();
		String sql = "update Vacxin set TenVacxin =N'"+tenvacxin+"',TuoiToiThieu='"+tuoitoithieu+"',TuoiToiDa='"+tuoitoida+"',"
				+ "SoMui='"+somui+"',MaLoaiVacxin ='"+maloaivacxin+"' where Mavacxin='"+mavacxin+"'";
				
		cmd =cn.prepareStatement(sql);
		return cmd.executeUpdate();
	}

	public int deleteVacxin(int mavacxin)throws Exception{
		KetNoi();
		String sql="delete Vacxin where Mavacxin='"+mavacxin+"'";
		cmd=cn.prepareStatement(sql);
		return cmd.executeUpdate();
	}
	

	public boolean kiemTraTen2(String tenvacxin ,int mavacxin) throws Exception {
		KetNoi();
		String sql = "select TenVacxin from Vacxin where Mavacxin !='"+mavacxin+"' ";
		 cmd = cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String Tenvacxin = rs.getString("TenVacxin");
			if (Tenvacxin.toLowerCase().equals(tenvacxin.toLowerCase())) {
				return false;
			}
		}
		cmd.close();
		return true;
	}
	
	public ArrayList<Vacxin> timKiemVacxin(String tenvacxin) throws Exception {
		KetNoi();
		String sql = "select * from Vacxin where tenvacxin like N'%"+tenvacxin+"%'";
		 cmd = cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {

			int maVacxin = rs.getInt("MaVacxin");
			String tenVacxin = rs.getString("TenVacxin");
			int maLoaiVacxin = rs.getInt("MaLoaiVacxin");
			int tuoiToiThieu = rs.getInt("TuoiToiThieu");
			int tuoiToiDa = rs.getInt("TuoiToiDa");
			int soMui = rs.getInt("SoMui");
			Vacxin v = new Vacxin(maVacxin, tenVacxin, maLoaiVacxin, tuoiToiThieu, tuoiToiDa, soMui);
			System.out.println("aaaaa");
			ds.add(v);

		}
		rs.close();
		cmd.close();
		return ds;
	}
}
