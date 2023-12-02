package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.KhachHangDAO;
import model.KhachHang;
import util.Email;

/**
 * Servlet implementation class ThayDoiThongTin
 */
@WebServlet("/thay-doi-thong-tin")
public class ThayDoiThongTin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThayDoiThongTin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hoVaTen = request.getParameter("hoVaTen");
		String gioiTinh = request.getParameter("gioiTinh");
		String ngaySinh = request.getParameter("ngaySinh");
		String diaChiKhachHang = request.getParameter("diaChiKhachHang");
		String dienThoai = request.getParameter("dienThoai");
		String email = request.getParameter("email");
		String isadmin = request.getParameter("isadmin") ; 
		request.setAttribute("hoVaTen", hoVaTen);
		request.setAttribute("gioiTinh", gioiTinh);
		request.setAttribute("ngaySinh", ngaySinh);
		request.setAttribute("diaChiKhachHang", diaChiKhachHang);
		request.setAttribute("dienThoai", dienThoai);
		request.setAttribute("email", email);
		request.setAttribute("isadmin", isadmin);
		
		String url = "";
		
		String baoLoi = "";
		KhachHangDAO khachHangDAO = new KhachHangDAO();

		request.setAttribute("baoLoi", baoLoi);
		
		if(baoLoi.length()>0) {
			url = "/dangky.jsp";
		}else {
			Object obj = request.getSession().getAttribute("khachHang");
			KhachHang khachHang = null;
			if (obj!=null)
				khachHang = (KhachHang)obj;		
				if(khachHang!=null){	
					String maKhachHang = khachHang.getMaKhachHangString();
					int currentIsadminValue = khachHang.getIsadmin();
					KhachHang kh = new KhachHang(maKhachHang, "", "", hoVaTen, gioiTinh, diaChiKhachHang, Date.valueOf(ngaySinh), dienThoai, email,currentIsadminValue);
					khachHangDAO.updateInfo(kh);
					KhachHang kh2 = khachHangDAO.selectById(kh);
					request.getSession().setAttribute("khachHang", kh2);
					url = "/ThayDoiThongTinThanhCong.jsp";
					
				}
			
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
			
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
