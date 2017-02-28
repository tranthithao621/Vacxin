package Model.BO;

import java.util.ArrayList;
import java.util.regex.Pattern;

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
	public ArrayList<Vacxin> timKiemVacxin1(int tuoi, int maLoaiVacxin, String tenVacxin) throws Exception{
		return v.timKiemVacxin1(tuoi, maLoaiVacxin, tenVacxin);
	}
	
	public int somui(int mavacxin)throws Exception{
		return v.SoMui(mavacxin);
	}
	public ArrayList<Vacxin> getVacxin1() throws Exception{
		return v.getVacxin1();
	}
	
	public int kTTenVacxin(String tenvacxin)throws Exception{
		 Pattern pattern = Pattern.compile("\\d*");
        java.util.regex.Matcher matcher = pattern.matcher(tenvacxin);
		if(matcher.matches()){
			return 0;
		}else{
			if(tenvacxin.length()>50){
				return 0;
			}
			return 1;
		}
	}
}
