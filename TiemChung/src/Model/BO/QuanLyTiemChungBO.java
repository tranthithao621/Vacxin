package Model.BO;

import java.util.ArrayList;

import Model.Bean.QuanLyTiemChung;



public class QuanLyTiemChungBO {
	Model.DAO.QuanLyTiemChungDAO s = new Model.DAO.QuanLyTiemChungDAO();
	public ArrayList<Model.Bean.QuanLyTiemChung> getKhachHang() throws Exception{
		return s.getKhachHang();
	}
	public QuanLyTiemChung getKhachHangTheoMa(String tenKH) throws Exception{
		return s.getKhachHangTheoMa(tenKH);

	}
	public int LanTiem(int makhachhang)throws Exception{
		return s.MaxLanTiem(makhachhang);
	}
	public int LayMaKhachHang(String tenkhachhang)throws Exception{
		return s.layMaKhachHang(tenkhachhang);
	}
}
