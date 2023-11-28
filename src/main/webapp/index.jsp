<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang Chủ </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="img/themify-icons/themify-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </head>
    <body>
        <section style="background-image: url('img/Hinh-anh-thanh-pho-Da-Nang-dep-an-tuong-nhat.jpg'); background-size: cover; background-position: center;">
            <header> 
            
        
				
                <!--
                <h2><a href="#" class="logo">DaNang Tralvel</a></h2> -->
                <h2><a href="#" class="logo"><img src="img/logo-du-lich-da-nang-tourism-vn-1-1187x900_preview_rev_1.png" alt="Mo ta anh"></a></h2>
                <div class="navigation">
                    <a href="home.html">Home</a>
                <!--    <a href="destinations.html">Destinations</a>
                    <a href="foods.html">Foods</a>
                    <a href="Hotel.html">Hotel</a>
                    <a href="contact.html" >Contact</a> 
                    <a href="about.html" >About</a>    --> 
                  
                </div>
					<%
						Object obj = session.getAttribute("khachHang");
						KhachHang khachHang = null ; 
						if (obj!=null)
							khachHang = (KhachHang)obj;
						
						if(khachHang==null){
					%>
						<a class="btn btn-primary" style="white-space: nowrap;  
														 display: inline-block;
														    padding: 10px 20px;
														    margin: 10px;
														    text-decoration: none;
														    color: #ffffff;
														    background-color: #007bff;
														    border-radius: 5px;" 
														    
														    href="login.jsp">
							Đăng nhập
						</a>
					<!--  	<a class="btn btn-primary" style="white-space: nowrap;" href="register.jsp">
							Đăng kí
						</a> -->
					<%} else { %>
						<ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-infor ">
								<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								    <i class="fa-solid fa-user" style="color: #3294F1;"></i> <%= khachHang.getTenDangNhapString() %>
								</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>  Đơn hàng của tôi</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-bell" style="color: black;"></i>   Thông báo</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-user-plus" style="color: black;"></i> Thay đổi thông tin</a></li>
									<li><a class="dropdown-item" href="doimatkhau.jsp"><i class="fa-solid fa-key" style="color: black;"></i>  Đổi mật khẩu</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-user-large-slash" style="color: black;"></i>  Xoá tài khoản</a></li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="dang-xuat"><i class="fa-solid fa-door-open" style="color: black;"></i>  Đăng Xuất</a></li>
								</ul></li>
						</ul>
					<% } %>
				
						
               
            </header>
        </section>

        <script src="" async defer></script>
        <div class="hotel-section">
        	<div class="text-content">
        		<h2 class="text-heading">HOTEL</h2>
        		<p class="text-des">
        			<i>Choose your favorite hotel</i>
        		</p>
        	</div>
        	<div class="div-father">
        		<div class="div-son">
				    <img src="img/hotel/khachsan1.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">HoiAnb</h3>
				      <p class="location">Thanh Khe, Da Nang</p>
				      <button href="#" class="view-hotel js-view">View</button>
				    </div>
				 </div>
				 <div class="div-son">
				    <img src="img/hotel/khachsan2.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Sa Hakimi</h3>
				      <p class="location">Lien Chieu, Da Nang</p>
				       <button href="#" class="view-hotel2 js-view2">View</button>
				    </div>
				 </div>
				 <div class="div-son">
				    <img src="img/hotel/khachsan3.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Maria LM</h3>
				      <p class="location">Son Tra, Da Nang</p>
				      <button href="#" class="view-hotel3 js-view3">View</button>
				    </div>
				 </div>
				 <div class="clear"></div>
			</div>
        </div>
        <div class="modal js-modal">
        	<div class="modal-container">
        		<div class="modal-close js-modal-close">
        			<i class="ti-close"></i>
        		</div>
        	
        		<h1 class="modal-header">
        			Viewing Hotel
        		</h1>
        		<div class="modal-body">
        			<img src="img/hotel/khachsan1.jpg" atl="mo ta anh">
        			<div class="modal-body-des">
        				<p class="modal-heading">Name: HoiAnb</p>
        				<p class="modal-location">Location: Thanh Khe, Da Nang</p>
        				<p class="modal-price">Prices: 150$ per night</p>
        				<p class="modal-amenities">
        					<ul>Amenities: 
        						<li class="amenities-des">Having swimming pool</li>
        						<li class="amenities-des">Offer free breakfast</li>
        					</ul>
        				</p>
        			</div>
        		</div>
        		<div class="modal-footer">
        			<p class="modal-help">Need <a href="">help!</a></p>
        		</div>
        	</div>
        </div>
        <div class="modal2 js-modal2">
        	<div class="modal2-container">
        		<div class="modal2-close js-modal2-close">
        			<i class="ti-close"></i>
        		</div>
        	
        		<h1 class="modal2-header">
        			Viewing Hotel
        		</h1>
        		<div class="modal2-body">
        			<img src="img/hotel/khachsan2.jpg" atl="mo ta anh">
        			<div class="modal2-body-des">
        				<p class="modal-heading">Name: Sa Hakimi</p>
        				<p class="modal-location">Location: Lien Chieu, Da Nang</p>
        				<p class="modal-price">Prices: 150$ per night</p>
        				<p class="modal-amenities">
        					<ul>Amenities: 
        						<li class="amenities-des">Discount 20% for over 4 people</li>
        						<li class="amenities-des">Offer free breakfast</li>
        						<li class="amenities-des">Using free gym room</li>
        					</ul>
        				</p>
        			</div>
        		</div>
        		<div class="modal-footer">
        			<p class="modal-help">Need <a href="">help!</a></p>
        		</div>
        	</div>
        </div>
        <div class="modal3 js-modal3">
        	<div class="modal3-container">
        		<div class="modal3-close js-modal3-close">
        			<i class="ti-close"></i>
        		</div>
        	
        		<h1 class="modal3-header">
        			Viewing Hotel
        		</h1>
        		<div class="modal3-body">
        			<img src="img/hotel/khachsan3.jpg" atl="mo ta anh">
        			<div class="modal3-body-des">
        				<p class="modal-heading">Name: Maria LM</p>
        				<p class="modal-location">Location: Son Tra, Da Nang</p>
        				<p class="modal-price">Prices: 200$ per night</p>
        				<p class="modal-amenities">
        					<ul>Amenities: 
        						<li class="amenities-des">Having swimming pool</li>
        						<li class="amenities-des">Offer free breakfast</li>
        						<li class="amenities-des">Using free gym room</li>
        					</ul>
        				</p>
        			</div>
        		</div>
        		<div class="modal-footer">
        			<p class="modal-help">Need <a href="">help!</a></p>
        		</div>
        	</div>
        </div>
        
        
       <script type="text/javascript">
       		const viewHotel = document.querySelector('.js-view');
       		const viewHotel2 = document.querySelector('.js-view2');
       		const viewHotel3 = document.querySelector('.js-view3');
       		const modal = document.querySelector('.js-modal');
       		const modal2 = document.querySelector('.js-modal2');
       		const modal3 = document.querySelector('.js-modal3');
       		const modalClose = document.querySelector('.js-modal-close');
       		const modalClose2 = document.querySelector('.js-modal2-close');
       		const modalClose3 = document.querySelector('.js-modal3-close');
       		
       		// show
       		function showHotel() {
       			modal.classList.add('open'); 
       		}
       		
       		function showHotel2() {
       			modal2.classList.add('open'); 
       		}
       		
       		function showHotel3() {
       			modal3.classList.add('open'); 
       		}
       		
       		
       		//hide
       		function hideHotel() {
       			modal.classList.remove('open');
       		}
       		
       		function hideHotel2() {
       			modal2.classList.remove('open');
       		}
       		
       		function hideHotel3() {
       			modal3.classList.remove('open');
       		}
       		
       		viewHotel.addEventListener('click', showHotel);
       		viewHotel2.addEventListener('click', showHotel2);
       		viewHotel3.addEventListener('click', showHotel3);
       		
       		modalClose.addEventListener('click', hideHotel);
       		modalClose2.addEventListener('click', hideHotel2);
       		modalClose3.addEventListener('click', hideHotel3);
       </script>
    </body>
</html>