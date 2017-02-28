package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BO.LoaiVacxinBO;
import Model.Bean.LoaiVacxin;


/**
 * Servlet implementation class ThemLoaiVacxinServlet
 */
@WebServlet("/ThemLoaiVacxinServlet")
public class ThemLoaiVacxinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemLoaiVacxinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("nguoidung") == null){
			response.sendRedirect("Home.jsp");
			return;
		}
		LoaiVacxinBO loaiVacxinBO = new LoaiVacxinBO();
		
		
			if(request.getParameter("them") != null && request.getParameter("tenLoaiVacxin") != "" ){
			String tenLoaiVacxin = request.getParameter("tenLoaiVacxin");
			
			try {
				loaiVacxinBO.themLoaiVacxin(tenLoaiVacxin);
				response.sendRedirect("ThemLoaiVacxinServlet");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if(request.getParameter("s") != null){
			ArrayList<LoaiVacxin> listLoaiVacxin;
			try {
				listLoaiVacxin = loaiVacxinBO.timKiemLoaiVacxin(request.getParameter("s"));
				request.setAttribute("listLoaiVacxin", listLoaiVacxin);
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}	
			RequestDispatcher rd=request.getRequestDispatcher("LoaiVacxin.jsp");
			rd.forward(request, response);
		}else{
			ArrayList<LoaiVacxin> listLoaiVacxin;
			try {
				listLoaiVacxin = loaiVacxinBO.getLoaiVacxin();
				request.setAttribute("listLoaiVacxin", listLoaiVacxin);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			RequestDispatcher rd=request.getRequestDispatcher("LoaiVacxin.jsp");
			rd.forward(request, response);
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
