package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.CTVacxinBO;
import Model.BO.LichSuTiemPhongBO;
import Model.BO.QuanLyTiemChungBO;
import Model.BO.VacxinBO;
import Model.Bean.QuanLyTiemChung;
import Model.Bean.Vacxin;

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
		try{
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
			String tenkhachhang= request.getParameter("tenkhachhang");
			String makhachhang = request.getParameter("makhachhang");
			String mavacxin = request.getParameter("mavacxin");
			String xuatxu = request.getParameter("xuatxu");
			String ngaytaitiem= request.getParameter("ngaytaitiem");
			String lantiem = request.getParameter("lantiem");
			String ghichu= request.getParameter("ghichu");
			System.out.println(xuatxu);
			
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
				}
				if(Integer.parseInt(xuatxu)<=0){
						request.setAttribute("ngaytaitiem", " Vui lòng chọn ngày tái tiêm");
				}
				if("".equals(ngaytaitiem)){
					request.setAttribute("xuatxu", "Vui lòng chọn xuất xứ");
				}
				
				
			}else{
				int malonhap = Integer.parseInt(xuatxu);
				CTVacxinBO ctVacxinBO = new CTVacxinBO();
				int giaban = ctVacxinBO.getGia( malonhap);
				
			QuanLyTiemChungBO lyTiemChungBO = new QuanLyTiemChungBO();
			LichSuTiemPhongBO lichSuTiemPhongBO = new LichSuTiemPhongBO();
			
			lichSuTiemPhongBO.AddLichSuTiemPhong(Integer.parseInt(makhachhang), Integer.parseInt(mavacxin), ngaytaitiem, Integer.parseInt(lantiem), giaban, ghichu);
			request.setAttribute("thanhcong", "Thêm Thành Công!!");
			}
			
			
			QuanLyTiemChungBO kh= new QuanLyTiemChungBO();			
			List<QuanLyTiemChung> lstkh = kh.getKhachHang();
			request.setAttribute("lstkh", lstkh);
			RequestDispatcher rd = request.getRequestDispatcher("Quanlytiemchung.jsp");
			rd.forward(request, response);
		}catch (Exception tt){
			response.getWriter().println("<html><body>"+ tt.getMessage()+"</body></html>");
			
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
