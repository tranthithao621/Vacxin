package Model.BO;

import java.util.ArrayList;

import Model.Bean.KhachHang;
import Model.DAO.KhachHangDAO;


public class KhachHangBO {
	
	KhachHangDAO kh = new KhachHangDAO();
	
	public ArrayList<KhachHang> getKhachHang()throws Exception{
		return kh.getKhachHang();
	}
	public int themKhachHang(String tenKH, int tuoi, boolean gioiTinh,String soDT, String diaChi, String email) throws Exception{
		return kh.themKhachHang(tenKH, tuoi, gioiTinh, soDT, diaChi, email);
	}
	public int suaKhachHang(int maKH ,String tenKH, int tuoi, boolean gioiTinh,String soDT, String diaChi, String email) throws Exception{
		return kh.suaKhachHang(maKH, tenKH, tuoi, gioiTinh, soDT, diaChi, email);
		
	}
	public int xoaKhachHang(String maKH)throws Exception{
		return kh.xoaKhachHang(maKH);
		
	}
	public ArrayList<KhachHang> timKiemKhachHang(String tenKH)throws Exception{
		return kh.timKiemKhachHang(tenKH);
	}
	public KhachHang getKhachHang(int maKH)throws Exception{
		return kh.getKhachHang(maKH);
	}
	
	public KhachHang getKhachHangTheoMa(String tenKH) throws Exception{
		return kh.getKhachHangTheoMa(tenKH);

	}
	public int LanTiem(int makhachhang ,int mavacxin)throws Exception{
		return kh.MaxLanTiem(makhachhang, mavacxin);
	}
	public int LayMaKhachHang(String tenkhachhang)throws Exception{
		return kh.layMaKhachHang(tenkhachhang);
	}
	public ArrayList<KhachHang> timKiemKhacHang(String tenkhachhang)throws Exception{
		return kh.timKiemKhachHang(tenkhachhang);
	}
	

}
