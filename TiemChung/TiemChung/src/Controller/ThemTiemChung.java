package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.CTVacxinBO;
import Model.BO.KhachHangBO;
import Model.BO.LichSuTiemPhongBO;

import Model.BO.VacxinBO;
import Model.Bean.KhachHang;


/**
 * Servlet implementation class ThemTiemChung
 */
@WebServlet("/ThemTiemChung")
public class ThemTiemChung extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemTiemChung() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("nguoidung") == null){
			response.sendRedirect("Home.jsp");
			return;
		}
		try{
			VacxinBO vacxinBO = new VacxinBO(); 
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
			String tenkhachhang= request.getParameter("tenkhachhang");
			String makhachhang = request.getParameter("makhachhang");
			String mavacxin = request.getParameter("mavacxin");
			String xuatxu = request.getParameter("xuatxu");
			String ngaytaitiem= request.getParameter("ngaytaitiem");
			String lantiem = request.getParameter("lantiem");
			String ghichu= request.getParameter("ghichu");
			if("".equals(makhachhang)!=true && "".equals( mavacxin)!=true){
				if(vacxinBO.somui(Integer.parseInt(mavacxin)) <	Integer.parseInt(lantiem)){
					request.setAttribute("loi", "Khách hàng đả tiêm đủ số lượng của vacxin này");

					KhachHangBO kh= new KhachHangBO();			
					List<KhachHang> lstkh = kh.getKhachHang();
					request.setAttribute("lstkh", lstkh);
					RequestDispatcher rd = request.getRequestDispatcher("Quanlytiemchung.jsp");
					rd.forward(request, response);
					
				}	
			}
			if("".equals(mavacxin) ||"".equals(makhachhang)||"".equals(xuatxu)||"".equals(ngaytaitiem)){
				
				
				request.setAttribute("tenkhachhang1",tenkhachhang );
				request.setAttribute("ngaytaitiem1", ngaytaitiem );
				request.setAttribute("xuatxu1", xuatxu);
				request.setAttribute("ghichu1", ghichu);
				request.setAttribute("mavacxin1", mavacxin);
				if("".equals(mavacxin)){
					request.setAttribute("mavacxin", " Vui lòng chọn vacxin");
					
				}
				if("".equals(makhachhang)){
					request.setAttribute("makhachhang", " Vui lòng chọn khách hàng");
					
				}if( "".equals(xuatxu)|| " ".equals(xuatxu) ){
					request.setAttribute("xuatxu", "Vui lòng chọn xuất xứ");
				}if(xuatxu==null){
					request.setAttribute("xuatxu", "Vacxin này đả hết");
				}if("".equals(ngaytaitiem)){
					
					request.setAttribute("ngaytaitiem", " Vui lòng chọn ngày tái tiêm");
				}
				
				
			}else{
				int malonhap = Integer.parseInt(xuatxu);
				CTVacxinBO ctVacxinBO = new CTVacxinBO();
				int giaban = ctVacxinBO.getGia( malonhap);
			
			LichSuTiemPhongBO lichSuTiemPhongBO = new LichSuTiemPhongBO();
			
			lichSuTiemPhongBO.AddLichSuTiemPhong(Integer.parseInt(makhachhang), Integer.parseInt(mavacxin), ngaytaitiem, Integer.parseInt(lantiem), giaban, ghichu);
			ctVacxinBO.updateSoLuong(malonhap);
			request.setAttribute("thanhcong", "Thêm Thành Công!!");
			}
			
			KhachHangBO  kh= new KhachHangBO();		
			List<KhachHang> lstkh = kh.getKhachHang();
			request.setAttribute("lstkh", lstkh);
			RequestDispatcher rd = request.getRequestDispatcher("Quanlytiemchung.jsp");
			rd.forward(request, response);
		}catch (Exception tt){
			request.setAttribute("loi", "Hôm nay bạn đã tiêm Vacxin này rồi!!");
			//response.getWriter().println("<html><body>"+ tt.getMessage()+"</body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("QuanLyTiemChungServlet");
			rd.forward(request, response);
			
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
