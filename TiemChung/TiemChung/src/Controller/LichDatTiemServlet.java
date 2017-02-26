package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Bean.LichDatTiem;
import Model.BO.LichDatTiemBO;

/**
 * Servlet implementation class LichDatTiemServlet
 */
@WebServlet("/LichDatTiemServlet")
public class LichDatTiemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichDatTiemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try{
			LichDatTiemBO tk = new LichDatTiemBO();
			
			ArrayList<LichDatTiem> dstk = null;
			
			String tuKhoa = request.getParameter("s");
			if( tuKhoa != null){
				dstk = tk.timKiemTheoTenVacxin(tuKhoa);
			}else{
				dstk = tk.getDatLich();
			}
			int total_page = (int) Math.ceil(dstk.size()/2.0);
			request.setAttribute("total_page", total_page);
			request.setAttribute("dstk", dstk);
			RequestDispatcher rd = request.getRequestDispatcher("Lichdattiem.jsp");
			rd.forward(request, response);
		}catch(Exception tt){
			response.getWriter().println("<html><body>"+ tt.getMessage()+"</body></html>");
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
