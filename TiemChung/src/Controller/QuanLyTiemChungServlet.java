package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.QuanLyTiemChungBO;
import Model.BO.VacxinBO;
import Model.Bean.QuanLyTiemChung;
import Model.Bean.Vacxin;


/**
 * Servlet implementation class QuanLyTiemChungServlet
 */
@WebServlet("/QuanLyTiemChungServlet")
public class QuanLyTiemChungServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanLyTiemChungServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Model.BO.VacxinBO vx = new VacxinBO();
			QuanLyTiemChungBO kh= new QuanLyTiemChungBO();			
			List<QuanLyTiemChung> lstkh = kh.getKhachHang();
			List<Vacxin> lstvx = vx.getVacxin();
			if(request.getParameter("makh")!=null)
			{	String makh=request.getParameter("makh");
				QuanLyTiemChung nv1= kh.getKhachHangTheoMa(makh);
					request.setAttribute("kh",nv1);
				int makhachhang= Integer.parseInt(makh);
				int lantiem = kh.LanTiem(makhachhang);
				lantiem= lantiem+1;
				String a= String.valueOf(lantiem);
				request.setAttribute("lantiem",a );
				//System.out.println(lantiem);
				
			}else 
			request.setAttribute("kh",null);
			request.setAttribute("lstkh", lstkh);
			request.setAttribute("lstvx", lstvx);
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("utf-8");
			String tenkhachhang= request.getParameter("tenkhachhang");
			String makhachhang = request.getParameter("makhachhang");
			String mavacxin = request.getParameter("mavacxin");
			String xuatxu = request.getParameter("xuatxu");
			String ngaytaitiem= request.getParameter("ngaytaitiem");
			String lantiem = request.getParameter("lantiem");
			String ghichu= request.getParameter("ghichu");
			request.setAttribute("tenkhachhang1",tenkhachhang );
			request.setAttribute("ngaytaitiem1", ngaytaitiem );
			request.setAttribute("xuatxu1", xuatxu);
			request.setAttribute("ghichu1", ghichu);
			request.setAttribute("mavacxin1", mavacxin);
			System.out.println(ngaytaitiem);
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
