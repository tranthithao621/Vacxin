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

/**
 * Servlet implementation class ShowListCTVacxin
 */
@WebServlet("/ShowListCTVacxin")
public class ShowListCTVacxin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowListCTVacxin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{

			CTVacxinBO ctVacxinBO = new CTVacxinBO();

			request.setAttribute("ctvacxin", ctVacxinBO.getCTVacxin());
			
			RequestDispatcher rd = request.getRequestDispatcher("ShowListCTVacxin.jsp");
			rd.forward(request, response);
		}catch(Exception tt){
			response.getWriter().println("<html><body> Loi : "+tt.getMessage()+"</body><html>");
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
