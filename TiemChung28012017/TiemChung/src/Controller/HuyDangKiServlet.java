package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.LichDatTiemBO;

/**
 * Servlet implementation class HuyDangKiServlet
 */
@WebServlet("/HuyDangKiServlet")
public class HuyDangKiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HuyDangKiServlet() {
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
		
		int maKH = Integer.parseInt(session.getAttribute("maKH").toString());
		
		LichDatTiemBO lichDatTiemBO = new LichDatTiemBO();
		int maVacxin = Integer.parseInt(request.getParameter("maVacxin"));
		String ngayDat = request.getParameter("ngayDat");
		try {
			lichDatTiemBO.huyLichDatTiem(maKH, maVacxin, ngayDat);
			request.setAttribute("thongbao", "Hủy đăng ký thành công đợt tiêm Vacxin vào ngày "+ ngayDat);
			RequestDispatcher rd = request.getRequestDispatcher("LichDatTiemKHServlet");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
