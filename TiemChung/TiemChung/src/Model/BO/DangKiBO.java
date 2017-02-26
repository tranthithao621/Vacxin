package Model.BO;



import Model.DAO.DangKiDAO;



public class DangKiBO {
	DangKiDAO dangKiDAO = new DangKiDAO();
	public int datLichTiem(String ngay, int maKH, int maVacxin) throws Exception{
		return dangKiDAO.datLichTiem(ngay, maKH, maVacxin);
	}
	public int getSoLuongVacXin(int maVacxin) throws Exception{
		return dangKiDAO.getSoLuongVacXin(maVacxin);
	}
	public int getSoLuongVacxinHienCo(int maVacxin) throws Exception{
		return dangKiDAO.getSoLuongVacxinHienCo(maVacxin);
	}
	public int getLichDat(int makh)throws Exception {
		return dangKiDAO.getLichDat(makh);
	}
}
