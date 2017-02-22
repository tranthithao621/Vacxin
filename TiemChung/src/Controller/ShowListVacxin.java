package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.VacxinBO;
import Model.Bean.Vacxin;

/**
 * Servlet implementation class ShowListVacxin
 */
@WebServlet("/ShowListVacxin")
public class ShowListVacxin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ShowListVacxin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			VacxinBO vacxin = new VacxinBO();
			ArrayList<Vacxin> ds =vacxin.getVacxin();
			request.setAttribute("vacxin", ds);
			RequestDispatcher rd = request.getRequestDispatcher("ShowListVacxin.jsp");
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
