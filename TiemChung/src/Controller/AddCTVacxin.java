package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.BO.CTVacxinBO;
import Model.Bean.CTVacxin;

/**
 * Servlet implementation class AddCTVacxin
 */
@WebServlet("/AddCTVacxin")
public class AddCTVacxin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCTVacxin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			if(request.getParameter("quaylai")!=null){
				RequestDispatcher rd = request.getRequestDispatcher("ShowListCTVacxin");
				rd.forward(request, response);
			}
			request.setCharacterEncoding("UTF-8");
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
			String mavacxin =request.getParameter("mavacxin");
			String xuatxu= request.getParameter("xuatxu");
			String giaban= request.getParameter("giaban");
			String soluong = request.getParameter("soluong");
			String hansudung= request.getParameter("hansudung");
			CTVacxin v = new CTVacxin(0, xuatxu,  sdf.parse(hansudung), Integer.parseInt(giaban), Integer.parseInt(soluong), Integer.parseInt(mavacxin));
			if("".equals(hansudung)||"".equals(xuatxu)||"".equals(giaban)||"".equals(soluong)){
				request.setAttribute("loi", "Thiếu thông tin!!");
				
			}else {
				if(Integer.parseInt(soluong) <=0 ){
					request.setAttribute("loisoluong", "Số lượng phải lớn hơn 0");
					RequestDispatcher rd = request.getRequestDispatcher("ShowAddCTVacxin");
					rd.forward(request, response);
				}else if(Integer.parseInt(giaban)<= 0){
					request.setAttribute("loigiaban", "Gía bán phải lớn hơn 0");
					
				}else{
					CTVacxinBO ct = new CTVacxinBO();
					ct.addCTVacxin(Integer.parseInt(mavacxin), hansudung,Integer.parseInt(giaban), xuatxu, Integer.parseInt(soluong));
					request.setAttribute("thanhcong","Thêm chi tiết vacxin thành công");
				}
				
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("ShowAddCTVacxin");
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
