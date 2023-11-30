<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="css/XoaTaiKhoan.css">
	
</head>
<body style="background-image: url('img/Hinh-anh-thanh-pho-Da-Nang-dep-an-tuong-nhat.jpg'); background-size: cover; background-position: center; padding:200px;	 ">
	<%
		Object obj = session.getAttribute("khachHang");
		KhachHang khachHang = null;
		if (obj!=null)
			khachHang = (KhachHang)obj;		
			if(khachHang==null){		
	%>
	<h1>Bạn chưa đăng nhập vào hệ thống. Vui lòng quay lại trang chủ!</h1>
	<%
			}else {
				String baoLoi = request.getAttribute("baoLoi")+"";
				if(baoLoi.equals("null")){
					baoLoi = "";
				}
	%>
	<div class="container">
		<h1>XOÁ TÀI KHOẢN </h1>
		
		<form action="xoataikhoan" method="POST">
		  <div class="mb-3">
		    <label for="matKhauXacNhan" class="form-label">Mật khẩu xác nhận</label>
		    <input type="password" class="form-control" id="matKhauXacNhan" name="matKhauXacNhan">
		  </div>
		  <span style="color: red">
			<%=baoLoi%>
		</span>
		  <button type="submit" class="btn btn-primary">Xoá Tài Khoản</button>
		</form>
	</div>
	<%} %>
</body>
</html>