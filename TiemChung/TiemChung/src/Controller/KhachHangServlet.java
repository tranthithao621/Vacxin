package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.KhachHangBO;
import Model.Bean.KhachHang;


/**
 * Servlet implementation class KhachHangServlet
 */
@WebServlet("/KhachHangServlet")
public class KhachHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KhachHangServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		try{
			
			KhachHangBO khachHangBO = new KhachHangBO();
			boolean maKTSua1 = true;
			boolean maKTSua = true;
			boolean maKTThem = true;
			String maKHSua = request.getParameter("maKHSua");
			String btnThemKH = request.getParameter("btnthemkh");
			String btnSuaKH = request.getParameter("btnsuakh");
			String txtTimKiemKH = request.getParameter("txttimkiemkh");
			String btnTimKiemKH = request.getParameter("btntimkiemkh");
			//String maKHSua1 = (String)request.getAttribute("maKHSua");
			if(btnThemKH!=null){
				String tenKH = request.getParameter("txttenkh");
				String tuoi = request.getParameter("txttuoikh");
				String gioiTinh = request.getParameter("radiogioitinhkh");
				String diaChi = request.getParameter("txtdiachikh");
				String soDT = request.getParameter("txtsodtkh");
				String email = request.getParameter("txtemailkh");
				
				if(tenKH==""){
					maKTThem = false;
					request.setAttribute("kttenkh", "true");
					KhachHang KH = new KhachHang(tenKH, Integer.parseInt(tuoi), Boolean.parseBoolean(gioiTinh), soDT, diaChi, email);
					request.setAttribute("khthem",KH);
				}
				else if(tuoi==""){
					maKTThem = false;
					request.setAttribute("kttuoikh", "true");
					KhachHang KH = new KhachHang(tenKH, 0, Boolean.parseBoolean(gioiTinh), soDT, diaChi, email);
					request.setAttribute("khthem",KH);
				}
				else if(tuoi!=""){
					int kttuoi = Integer.parseInt(tuoi);
					if(kttuoi<=0||kttuoi>100){
						maKTThem = false;
						request.setAttribute("kttuoikh1", "true");
						KhachHang KH = new KhachHang(tenKH, Integer.parseInt(tuoi), Boolean.parseBoolean(gioiTinh), soDT, diaChi, email);
						request.setAttribute("khthem",KH);
					}
					else{
						khachHangBO.themKhachHang(tenKH, Integer.parseInt(tuoi), Boolean.parseBoolean(gioiTinh), soDT, diaChi, email);
					}
				}
				
				
				if(maKTThem==false){
					RequestDispatcher rd = request.getRequestDispatcher("ThemKhachHang.jsp");
					rd.forward(request, response);
				}
				
			}
			if(maKHSua!=null){
				
				maKTSua1 = false;
				request.setAttribute("khSua", khachHangBO.getKhachHang(Integer.parseInt(maKHSua)));
				RequestDispatcher rd = request.getRequestDispatcher("SuaTTKhachHang.jsp");
				rd.forward(request, response);
			}
			if(btnSuaKH!=null){
				//maKT = false;
				String tenKH = request.getParameter("txttenkhsua");
				String tuoi = request.getParameter("txttuoikhsua");
				String gioiTinh = request.getParameter("radiogioitinhkhsua");
				String diaChi = request.getParameter("txtdiachikhsua");
				String soDT = request.getParameter("txtsodtkhsua");
				String email = request.getParameter("txtemailkhsua");
				String maKHSua1 = request.getParameter("txtmakhsua");
				if(tenKH==""){
					maKTSua = false;
					request.setAttribute("kttenkhsua", "true");
					request.setAttribute("khSua", khachHangBO.getKhachHang(Integer.parseInt(maKHSua1)));
					
				}
				else if(tuoi==""){
					maKTSua = false;
					request.setAttribute("kttuoikhsua", "true");
					request.setAttribute("khSua", khachHangBO.getKhachHang(Integer.parseInt(maKHSua1)));
				}
				else if(tuoi!=""){
					int kttuoi = Integer.parseInt(tuoi);
					if(kttuoi<=0||kttuoi>100){
						maKTSua = false;
						request.setAttribute("kttuoikh1sua", "true");
						request.setAttribute("khSua", khachHangBO.getKhachHang(Integer.parseInt(maKHSua1)));
					}
					else{
						khachHangBO.suaKhachHang(Integer.parseInt(maKHSua1), tenKH, Integer.parseInt(tuoi), Boolean.parseBoolean(gioiTinh),soDT , diaChi, email);
					}
				}
				
				
				if(maKTSua==false){
					RequestDispatcher rd = request.getRequestDispatcher("SuaTTKhachHang.jsp");
					rd.forward(request, response);
				}
				
			}
			
			ArrayList<KhachHang> listKhachHang = khachHangBO.getKhachHang();
			request.setAttribute("listKhachHang", listKhachHang);
			if(btnTimKiemKH!=null){
				ArrayList<KhachHang> listKH = khachHangBO.timKiemKhachHang(txtTimKiemKH);
				request.setAttribute("listKhachHang", listKH);
			}
			if(maKTSua==true||maKTThem==true){
				RequestDispatcher rd = request.getRequestDispatcher("QuanLyKhachHang.jsp");
				rd.forward(request, response);
			}
			
		}catch (Exception tt) {
			response.getWriter().println("<html><body>"+tt.getMessage()+"</body></html>");
	
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
