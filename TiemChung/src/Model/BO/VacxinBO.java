package Model.BO;

import java.util.ArrayList;

import Model.Bean.Vacxin;
import Model.DAO.VacxinDAO;

public class VacxinBO {
	VacxinDAO v = new VacxinDAO();
	
	public ArrayList<Vacxin> getVacxin() throws Exception{
		return v.getVacxin();
	}
	
	public boolean kiemTraTen(String tenvacxin)throws Exception{
		return v.kiemTraTen(tenvacxin);
	}
	
	public int addVacxin(String tenvacxin,int tuoitoithieu, int tuoitoida, int somui,int maloaivacxin)throws Exception{
		return v.addVacxin(tenvacxin, tuoitoithieu, tuoitoida, somui, maloaivacxin);
	}
	
	public Vacxin get1Vacxin(int mavacxin)throws Exception{
		return v.get1Vacxin(mavacxin);
	}
	public int editVacxin(String tenvacxin,int tuoitoithieu, int tuoitoida, int somui,int maloaivacxin, int mavacxin)throws Exception{
		return v.EditVacxin(tenvacxin, tuoitoithieu, tuoitoida, somui, maloaivacxin, mavacxin);
	}
	
	public int deleteVacxin(int mavacxin)throws Exception{
		return v.deleteVacxin(mavacxin);
	}
	
	public boolean kiemTraTen2(String tenvacxin, int mavacxin)throws Exception{
		return v.kiemTraTen2(tenvacxin,mavacxin);
	}
	
	public ArrayList<Vacxin> timKiemVacxin(String tenvacxin) throws Exception{
		return v.timKiemVacxin(tenvacxin);
	}
	
}
