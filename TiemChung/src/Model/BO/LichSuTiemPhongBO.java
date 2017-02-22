package Model.BO;

import java.util.ArrayList;

import Model.Bean.LichSuTiemPhong;
import Model.DAO.LichSuTiemPhongDAO;


public class LichSuTiemPhongBO {
	LichSuTiemPhongDAO s = new LichSuTiemPhongDAO();
	public ArrayList<LichSuTiemPhong> getLichSu() throws Exception{
		return s.getLichSu();
	}
	public ArrayList<LichSuTiemPhong> getLichSu(String n1,String n2) throws Exception{
		return s.getLichSu(n1, n2);
			
	}
	
	public int AddLichSuTiemPhong(int makh, int mavacxin, String ngaytaitiem, int lantiem, int giaban,
			String ghichu)throws Exception{
		return s.AddLichSuTiemPhong(makh, mavacxin, ngaytaitiem, lantiem, giaban, ghichu);
	}
}
