<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Thay Đổi Thông Tin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
<style>
.red {
	color: red;
}

body {
	font-family: 'Arial', sans-serif;
	background-color: #f8f9fa;
}

.container {
	margin-top: 50px;
}

.text-center {
	margin-bottom: 30px;
}

.red {
	color: red;
}

.form {
	background-color: rgba(40, 155, 221, 0.2); 
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	border-radius: 8px;
	margin-bottom: 100px;
}

.form h1 {
	color: #007bff;
}

.form-label {
	font-weight: bold;
	color: #495057;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}
</style>
</head>
<body style="background-image: url('img/Hinh-anh-thanh-pho-Da-Nang-dep-an-tuong-nhat.jpg'); background-size: cover; background-position: center;">
	
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

	<div class ="container">
	<%


	

	String hoVaTen = khachHang.getHoVaTenString() ; 

	String gioiTinh = khachHang.getGioitinhString();
	
	String ngaySinh = khachHang.getNgaysinhDate().toString();
	
	String diaChiKhachHang = khachHang.getDiachiString();

	String dienThoai = khachHang.getSoDienthoaiString();

	String email = khachHang.getEmail();

	boolean dongYNhanMail= khachHang.isDangKyNhanBangTin();


	%>
	<div class="container">
		<div class="text-center">
			<h1>THÔNG TIN TÀI KHOẢN</h1>
		</div>

		<div class="red" id="baoLoi">
			<%=baoLoi%>
		</div>
		<form class="form" action="thay-doi-thong-tin" method="post">
			<div class="row">
				<div class="col-sm-6">
					<h3>Thông tin khách hàng</h3>
					<div class="mb-3">
						<label for="hoVaTen" class="form-label">Họ và tên<span class="red">*</span> <span id="msg" class="red"></span></label> <input
							type="text" class="form-control" id="hoVaTen" name="hoVaTen" required="required"  placeholder="Nhập chính xác họ tên của bạn "
							value="<%=hoVaTen%>">
					</div>
					<div class="mb-3">
						<label for="gioiTinh" class="form-label">Giới tính</label> <select
							class="form-control" id="gioiTinh" name="gioiTinh">
							<option></option>
							<option value="Nam"
								<%=(gioiTinh.equals("Nam")) ? "selected='selected'" : ""%>>Nam</option>
							<option value="Nữ"
								<%=(gioiTinh.equals("Nữ")) ? "selected='selected'" : ""%>>Nữ</option>
							<option value="Khác"
								<%=(gioiTinh.equals("Khác")) ? "selected='selected'" : ""%>>Khác</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="ngaySinh" class="form-label">Ngày sinh</label> <input
							type="date" class="form-control" id="ngaySinh" name="ngaySinh"
							value="<%=ngaySinh%>">
					</div>
				</div>
				<div class="col-sm-6">
					<h3>Địa chỉ</h3>
					<div class="mb-3">
						<label for="diaChiKhachHang" class="form-label">Địa chỉ
							khách hàng</label> <input type="text" class="form-control"
							id="diaChiKhachHang" name="diaChiKhachHang"  placeholder="Địa chỉ "
							value="<%=diaChiKhachHang%>">
					</div>
					<div class="mb-3">
						<label for="dienThoai" class="form-label">Điện thoại<span class="red">*</span> <span id="msg" class="red"></span></label> <input
							type="tel" class="form-control" id="dienThoai" name="dienThoai" required="required"  placeholder="Số điện thoại "
							value="<%=dienThoai%>">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email<span class="red">*</span> <span id="msg" class="red"></span></label> <input
							type="email" class="form-control" id="email" name="email" required="required" placeholder="Nhập Email để nhận tin nhắn xác thực"
							value="<%=email%>">
					</div>
					<div class="mb-3">
						<label for="dongYNhanMail" class="form-label">Đồng ý nhận
							email</label> <input type="checkbox" class="form-check-input"
							id="dongYNhanMail" name="dongYNhanMail" <%=(dongYNhanMail?"checked":"")%> >
					</div>
					<hr />
					
					<input class="btn btn-primary form-control" type="submit"
						value="Lưu Thông Tin" name="submit" id="submit"
						" />
				</div>
			</div>
		</form>
	</div>
	</div>
	<% } %>
</body>

</html>
