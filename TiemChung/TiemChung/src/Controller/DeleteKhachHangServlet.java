package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.KhachHangBO;


/**
 * Servlet implementation class DeleteKhachHangServlet
 */
@WebServlet("/DeleteKhachHangServlet")
public class DeleteKhachHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteKhachHangServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			KhachHangBO khachHangBO = new KhachHangBO();
			String maKH = request.getParameter("maKHXoa");
			khachHangBO.xoaKhachHang(maKH);
			RequestDispatcher rd = request.getRequestDispatcher("KhachHangServlet");
			rd.forward(request, response);
		}catch(Exception tt){
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
