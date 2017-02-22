package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Model.Bean.LoaiVacxin;
public class LoaiVacxinDAO {

	String url = "jdbc:sqlserver://SNAIL\\SQLEXPRESS:1433;databaseName=FPT";
	String userName = "sa";
	String password = "123";
	Connection cn;
	
	public void KetNoi()throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		cn = DriverManager.getConnection(url, userName, password);
		System.out.println("Ket noi thanh cong");
	}
	
	ArrayList<LoaiVacxin> ds  = new ArrayList<LoaiVacxin>();
	public ArrayList<LoaiVacxin> getVacxin() throws Exception{
		KetNoi();
		String sql ="select * from LoaiVacxin";
		PreparedStatement cmd = cn.prepareStatement(sql);
		ResultSet rs= cmd.executeQuery();
		while(rs.next()){
			int maLoaiVacxin =rs.getInt("MaLoaiVacxin");
			String tenLoaiVacxin =rs.getString("TenLoaiVacxin");
			LoaiVacxin lv = new LoaiVacxin(maLoaiVacxin, tenLoaiVacxin);
			System.out.println("aaaaa");
			ds.add(lv);	
			
		}
		rs.close();
		cmd.close();
		return ds;
	}
}
