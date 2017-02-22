package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.CTVacxinBO;
import Model.BO.VacxinBO;

/**
 * Servlet implementation class DeleteCTVacxin
 */
@WebServlet("/DeleteCTVacxin")
public class DeleteCTVacxin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCTVacxin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			int  mactvacxin =Integer.parseInt( request.getParameter("mactvacxin"));
			CTVacxinBO ctVacxinBO= new CTVacxinBO();
			ctVacxinBO.deleteCTVacxin(mactvacxin);
			RequestDispatcher rd = request.getRequestDispatcher("ShowListCTVacxin");
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
