package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.KhachHangBO;

/**
 * Servlet implementation class lanTiemServlet
 */
@WebServlet("/lanTiemServlet")
public class lanTiemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lanTiemServlet() {
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
			String makhachhang=request.getParameter("makh");
			String mavacxin=request.getParameter("mavacxin");
			KhachHangBO quanLyTiemChungBO = new KhachHangBO();
			int a=quanLyTiemChungBO.LanTiem(Integer.parseInt(makhachhang),Integer.parseInt( mavacxin));
			
			request.setAttribute("lantiem", a);
			RequestDispatcher rd = request.getRequestDispatcher("lantiem.jsp");
			rd.forward(request, response);

		}catch(Exception tt){
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
