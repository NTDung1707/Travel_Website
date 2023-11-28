package controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;


/**
 * Servlet implementation class XoaTaiKhoan
 */
@WebServlet("/xoataikhoan")
public class XoaTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaTaiKhoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String matKhauXacNhan = request.getParameter("matKhauXacNhan") ; 
		String url= " " ;
		KhachHang kh = new KhachHang();
		String baoLoi = ""; 
		url = "/xoataikhoan.jsp";
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("khachHang");
		KhachHang khachHang = null;
		
		if (obj!=null)
			khachHang = (KhachHang)obj;		
		if(khachHang==null) {
			baoLoi = "Bạn chưa đăng nhập vào hệ thống!";
		}else {
			if(!matKhauXacNhan.equals(khachHang.getMatkhauString())){
				baoLoi = "Mật khẩu không chính xác!";
			}else {
				KhachHangDAO khd = new KhachHangDAO();
				if(khd.deletekh(khachHang)) {
					baoLoi = "Xoá Tài Khoản Thành Công !";
//					 url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
//					+ request.getContextPath();
//				
//					response.sendRedirect(url+"index.jsp");
					url = "/dang-xuat" ; 
				}else {
					baoLoi = "Xoá Tài Khoản Không Thành Công!";
					//url = "/xoataikhoan.jsp" ;
				}
			}
		}
		request.setAttribute("baoLoi", baoLoi);
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
