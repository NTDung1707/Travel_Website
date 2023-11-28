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
 * Servlet implementation class DoiMatKhau
 */
@WebServlet("/doi-mat-khau")
public class DoiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoiMatKhau() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String matKhauHienTai = request.getParameter("matKhauHienTai") ; 
		String matKhauMoi = request.getParameter("matKhauMoi") ; 
		String matKhauMoiNhapLai = request.getParameter("matKhauMoiNhapLai") ; 
		String url= " " ;
		KhachHang kh = new KhachHang();
		String baoLoi = "";
		url = "/doimatkhau.jsp";
		
		// Kiem tra mat khau cu co giong hay khong
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("khachHang");
		KhachHang khachHang = null;
		
		if (obj!=null)
			khachHang = (KhachHang)obj;		
		if(khachHang==null) {
			baoLoi = "Bạn chưa đăng nhập vào hệ thống!";
		}else {
			// Neu khach hang da dang nhap
			if(!matKhauHienTai.equals(khachHang.getMatkhauString())){
				baoLoi = "Mật khẩu hiện tại không chính xác!";
			}else {
				if(!matKhauMoi.equals(matKhauMoiNhapLai)) {
					baoLoi = "Mật khẩu nhập lại không khớp!";
				}else {
					khachHang.setMatkhauString(matKhauMoi);
					KhachHangDAO khd = new KhachHangDAO();
					if(khd.changePassword(khachHang)) {
						baoLoi = "Mật khẩu đã thay đổi thành công!";
						url = "/index.jsp" ;
					}else {
						baoLoi = "Thay đổi mật khẩu không thành công!";
						url = "/doimatkhau.jsp" ;
					}
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
