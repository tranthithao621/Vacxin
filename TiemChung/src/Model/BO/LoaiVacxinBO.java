package Model.BO;

import java.util.ArrayList;
import Model.Bean.LoaiVacxin;
import Model.DAO.LoaiVacxinDAO;

public class LoaiVacxinBO {

	LoaiVacxinDAO lv = new LoaiVacxinDAO();
	
	public ArrayList<LoaiVacxin> getLoaiVacxin()throws Exception{
		return lv.getVacxin();
	}
}
