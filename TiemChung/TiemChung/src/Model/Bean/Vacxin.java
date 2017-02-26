package Model.Bean;

public class Vacxin {
	private int maVacxin;
	private String tenVacxin;
	private int maLoaiVacxin;
	private int tuoiToiThieu;
	private int tuoiToiDa;
	private int soMui;
	private int soLuongHienCo;
	public Vacxin(int maVacxin, String tenVacxin, int maLoaiVacxin, int tuoiToiThieu, int tuoiToiDa, int soMui) {
		super();
		this.maVacxin = maVacxin;
		this.tenVacxin = tenVacxin;
		this.maLoaiVacxin = maLoaiVacxin;
		this.tuoiToiThieu = tuoiToiThieu;
		this.tuoiToiDa = tuoiToiDa;
		this.soMui = soMui;
	}
	public int getMaVacxin() {
		return maVacxin;
	}
	public void setMaVacxin(int maVacxin) {
		this.maVacxin = maVacxin;
	}
	public String getTenVacxin() {
		return tenVacxin;
	}
	public void setTenVacxin(String tenVacxin) {
		this.tenVacxin = tenVacxin;	
	}
	public int getMaLoaiVacxin() {
		return maLoaiVacxin;
	}
	public void setMaLoaiVacxin(int maLoaiVacxin) {
		this.maLoaiVacxin = maLoaiVacxin;
	}
	public int getTuoiToiThieu() {
		return tuoiToiThieu;
	}
	public void setTuoiToiThieu(int tuoiToiThieu) {
		this.tuoiToiThieu = tuoiToiThieu;
	}
	public int getTuoiToiDa() {
		return tuoiToiDa;
	}
	public void setTuoiToiDa(int tuoiToiDa) {
		this.tuoiToiDa = tuoiToiDa;
	}
	public int getSoMui() {
		return soMui;
	}
	public void setSoMui(int soMui) {
		this.soMui = soMui;
	}

	public int getSoLuongHienCo() {
		return soLuongHienCo;
	}
	public void setSoLuongHienCo(int soLuongHienCo) {
		this.soLuongHienCo = soLuongHienCo;
	}
	public int getSoLuongConLai() {
		return soLuongConLai;
	}
	public void setSoLuongConLai(int soLuongConLai) {
		this.soLuongConLai = soLuongConLai;
	}
	
	
	
	public String getTenLoaiVacxin() {
		return tenLoaiVacxin;
	}
	public void setTenLoaiVacxin(String tenLoaiVacxin) {
		this.tenLoaiVacxin = tenLoaiVacxin;
	}
	


	private String tenLoaiVacxin;
	private int soLuongConLai;
}
