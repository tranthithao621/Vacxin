package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.LichSuTiemPhongBO;


/**
 * Servlet implementation class LichSuTiemPhong
 */
@WebServlet("/LichSuTiemPhong")
public class LichSuTiemPhong extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuTiemPhong() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			LichSuTiemPhongBO tk = new LichSuTiemPhongBO();
			String n1= request.getParameter("txtn1");
			String n2 = request.getParameter("txtn2");
		if(n1==null||n1==""||n2==null||n2=="")
		{
			request.setAttribute("dstk",tk.getLichSu());
		}
		else
		{
			ArrayList<Model.Bean.LichSuTiemPhong> k= tk.getLichSu(n1, n2);
			request.setAttribute("dstk", k);
		}
//		List<LichSuTiemPhong> dstk = tk.getLichSu();
//		request.setAttribute("dstk", dstk);
		RequestDispatcher rd = request.getRequestDispatcher("Lichsutiemphong.jsp");
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
