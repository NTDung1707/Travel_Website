package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.KhachHangDAO;
import model.KhachHang;
import java.io.IOException;
import java.sql.Date;
import java.util.Random;
import util.Email;

/**
 * Servlet implementation class Register
 */
@WebServlet("/do-Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tenDangNhap = request.getParameter("tenDangNhap") ; 
		String matKhau = request.getParameter("matKhau") ;
		String matKhauNhapLai= request.getParameter("matKhauNhapLai") ; 
		String hoVaTen = request.getParameter("hoVaTen") ; 
		String	gioiTinh = request.getParameter("gioiTinh") ; 
		String ngaySinh = request.getParameter("ngaySinh") ; 
		String diaChi = request.getParameter("diaChi") ; 
		String dienThoai = request.getParameter("dienThoai") ; 
		String email = request.getParameter("email") ; 
		String isadmin = request.getParameter("isadmin") ; 
		request.setAttribute("tenDangNhap", tenDangNhap);		
		request.setAttribute("hoVaTen", hoVaTen);
		request.setAttribute("gioiTinh", gioiTinh);
		request.setAttribute("ngaySinh", ngaySinh);
		request.setAttribute("diaChi", diaChi);
		request.setAttribute("dienThoai", dienThoai);
		request.setAttribute("isadmin", isadmin);
	
		String url = "";

		String baoLoi = "" ; 
		KhachHangDAO khachHangDAO = new KhachHangDAO() ; 
		if(khachHangDAO.kiemtraTenDangNhap(tenDangNhap)) {
			baoLoi +="Tên đang nhập đã tồn tại" ; 
		}
		if(khachHangDAO.kiemtraEmail(email)) {
			baoLoi +=" Email đã được đăng kí " ; 
		}
		if(!matKhau.equals(matKhauNhapLai)) {
			baoLoi +="Mật Khẩu không khớp" ; 
		}
request.setAttribute("baoLoi", baoLoi);

	
		if(baoLoi.length()>0) {
			url = "/register.jsp";
		}else {
			Random rd = new Random() ;
			String maKhachHang = System.currentTimeMillis() + rd.nextInt(1000) +"";
			//int currentIsadminValue = 0;
			//KhachHang kh = new KhachHang(maKhachHang, tenDangNhap, matKhau, hoVaTen, gioiTinh,diaChi,Date.valueOf(ngaySinh), dienThoai, email, Integer.parseInt(isadmin)=0 ) ;
			KhachHang kh = new KhachHang(maKhachHang, tenDangNhap, matKhau, hoVaTen, gioiTinh, diaChi,Date.valueOf(ngaySinh), dienThoai, email, 0) ;
			khachHangDAO.insert(kh);
			url = "/thanhcong.jsp";
			
			// gửi email
			String subject = "Đăng ký tài khoản thành công!";
            String content = "Chào mừng " + hoVaTen + ",<br><br>"
                    + "Chúc mừng bạn đã đăng ký thành công tài khoản.<br><br>"
            		+ "Tài khoản :  "+tenDangNhap +"<br>"+" Mật khẩu : "+matKhau+"<br>"
                    + " Cảm ơn bạn đã tham gia.<br>"
                    + "Trân trọng,<br>";
            
            boolean emailSent = Email.sendEmail(email, subject, content);

            if (emailSent) {
                System.out.println("Email đã được gửi thành công!");
                url = "/thanhcong.jsp";
            } else {
                System.out.println("Gửi email không thành công. Kiểm tra lại cấu hình email.");
                url = "/register.jsp";
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
