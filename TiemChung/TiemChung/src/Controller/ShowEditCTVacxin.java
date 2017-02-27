package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.CTVacxinBO;
import Model.BO.VacxinBO;

/**
 * Servlet implementation class ShowEditCTVacxin
 */
@WebServlet("/ShowEditCTVacxin")
public class ShowEditCTVacxin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowEditCTVacxin() {
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
			request.setAttribute("vacxin",vacxinBO.getVacxin());
			CTVacxinBO ctVacxinBO = new CTVacxinBO();
			int malonhap= Integer.parseInt(request.getParameter("malonhap"));
			request.setAttribute("ct1vacxin", ctVacxinBO.get1CTVacxin(malonhap));
			
			
			RequestDispatcher rd = request.getRequestDispatcher("ShowEditCTVacxin.jsp");
			rd.forward(request, response);
		}catch(Exception tt){
			tt.printStackTrace();
			//response.getWriter().println("<html><body> Loi : "+tt.getMessage()+"</body><html>");
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
