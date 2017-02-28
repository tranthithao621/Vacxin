package Model.BO;

import java.util.ArrayList;

import Model.Bean.ThongKe;
import Model.Bean.thongkebean;
import Model.Bean.tonkhobean;
import Model.DAO.ThongKeDAO;

public class ThongKeBO {
	ThongKeDAO tk = new ThongKeDAO();
	
	public ArrayList<ThongKe> get(String dk) throws Exception{
		return tk.get(dk);
	}
	public ArrayList<ThongKe> search(String tuKhoa) throws Exception{
		return tk.search(tuKhoa);
	}
	public ArrayList<thongkebean> getthongke(String n1,String n2) throws Exception
	{
		return tk.getthongke(n1, n2);
	}
	public  ArrayList<thongkebean> getthongke() throws Exception
	{
		return tk.getthongke();
	}
	public ArrayList<thongkebean > getthongke1(String n1,String n2) throws Exception
	{
		return tk.getthongke1(n1, n2);
	}
	public ArrayList<thongkebean > getthongkehh() throws Exception
	{
		return tk.getthongkehh();
	}
	public ArrayList<thongkebean > getthongke2() throws Exception
	{
		return tk.getthongke2();
	}
	public ArrayList<tonkhobean > getthongke3() throws Exception
	{
		return tk.getthongke3();
	}
}
