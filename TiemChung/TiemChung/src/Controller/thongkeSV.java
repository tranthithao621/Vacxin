package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.thongkebo;
import Model.Bean.thongkebean;


/**
 * Servlet implementation class thongkeSV
 */
@WebServlet("/thongkeSV")
public class thongkeSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongkeSV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try{
			thongkebo a = new thongkebo();
			String n1=request.getParameter("txtn1");
			String n2 = request.getParameter("txtn2");
			ArrayList<thongkebean> k = null;
			//HttpSession ses = request.getSession();
			if(n1==""||n1==null||n2==null||n2==""){
				k = a.getthongke();
				request.setAttribute("lk",k);
			}
			else
			{
				k= a.getthongke(n1, n2);
				request.setAttribute("lk",k);	
				
			}
			int total_page = (int) Math.ceil(k.size()/10.0);
			request.setAttribute("total_page", total_page);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("datiem.jsp");
			requestDispatcher.forward(request, response);
//			
		}catch (Exception e) {

			response.getWriter().println("<html><body>"+e.getMessage()+"</body></html>");	
		}
		request.setCharacterEncoding("utf-8");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
