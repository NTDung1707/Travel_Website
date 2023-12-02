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
					
					<% }if(khachHang != null && khachHang.getIsadmin() == 1 ) { %>
							<div class="navigation">
							<a href="ChinhSuaSanPham.jsp">Chỉnh Sửa Sản Phẩm</a>
							<a href="ChinhSuaSanPham.jsp">Quản Lý Đơn Hàng</a>
							
							</div>
					
					<% } %>
					<% if(khachHang!=null){ %>
						<ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-infor ">
								<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								    <i class="fa-solid fa-user" style="color: #3294F1;"></i> <%= khachHang.getTenDangNhapString() %>
								</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-cart-shopping" style="color: black;"></i>  Đơn hàng của tôi</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-bell" style="color: black;"></i>   Thông báo</a></li>
									<li><a class="dropdown-item" href="thaydoithongtin.jsp"><i class="fa-solid fa-user-plus" style="color: black;"></i> Thay đổi thông tin</a></li>
									<li><a class="dropdown-item" href="doimatkhau.jsp"><i class="fa-solid fa-key" style="color: black;"></i>  Đổi mật khẩu</a></li>
									<li><a class="dropdown-item" href="xoataikhoan.jsp"><i class="fa-solid fa-user-large-slash" style="color: black;"></i>  Xoá tài khoản</a></li>
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
        		<h2 class="text-heading">DESTINATIONS</h2>
        		<p class="text-des">
        			<i>Choose your favorite destination</i>
        		</p>
        	</div>
        	<div class="div-father">
        		<div class="div-son">
				    <img src="img/destinations/Golden Bridge.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Ba Na Hills</h3>
				      <p class="location">Hoa Vang, Da Nang</p>
				      <button href="#" class="view-hotel js-view">View</button>
				      <button href="#" class="booking">Booking</button>
				    </div>
				 </div>
				 <div class="div-son">
				    <img src="img/destinations/Than Tai mountain.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Than Tai Mountain</h3>
				      <p class="location">Hoa Vang, Da Nang</p>
				       <button href="#" class="view-hotel2 js-view2">View</button>
				       <button href="#" class="booking2">Booking</button>
				    </div>
				 </div>
				 <div class="div-son">
				    <img src="img/destinations/Water Park.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Mikazuki Water Park</h3>
				      <p class="location">Lien Chieu, Da Nang</p>
				      <button href="#" class="view-hotel3 js-view3">View</button>
				      <button href="#" class="booking3">Booking</button>
				    </div>
				 </div>
				 <div class="div-son">
				    <img src="img/destinations/Han River.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Han River</h3>
				      <p class="location">Hai Chau, Da Nang</p>
				      <button href="#" class="view-hotel4 js-view4">View</button>
				      <button href="#" class="booking4">Booking</button>
				    </div>
				 </div>
				 <div class="div-son">
				    <img src="img/destinations/Asia Park.jpg" alt="mo ta anh">
				    <div class="body-son">
				      <h3 class="heading-des">Asia Park</h3>
				      <p class="location">Hai Chau, Da Nang</p>
				      <button href="#" class="view-hotel5 js-view5">View</button>
				      <button href="#" class="booking5">Booking</button>
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
        			Viewing Destination
        		</h1>
        		<div class="modal-body">
        			<img src="img/destinations/Golden Bridge.jpg" atl="mo ta anh">
        			<ul class="modal-body-des">
        				<li>Name: Golden Bridge</li>
        				<li>Location: Hoa Ninh, Hoa Vang, Da Nang</li>
        				<li>Price: 40$</li>
        				<li>Open time: All Day</li>
        				<li>Highlight:</li>
        				<ul>
        						<li class="highlight">Take advantage of the wonderful view of Ba Na Peak standing on the Golden Bridge, one of the most beautiful bridges in the world</li>
        						<li class="highlight">Admire the majestic beauty of Chua Mountain from the cable car</li>
        						<li class="highlight">Visit the French village with its exquisite architectural gardens</li>
        						<li class="highlight">Have fun at Fantasty Park</li>
        				</ul>
        			</ul>
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
        			Viewing Destination
        		</h1>
        		<div class="modal2-body">
        			<img src="img/destinations/Than Tai mountain.jpg" atl="mo ta anh">
        			<ul class="modal2-body-des">
        				<li>Name: Than Tai Mountain</li>
        				<li>Location: QL14G, Hoa Phu, Hoa Vang, Da Nang</li>
        				<li>Price: 25$</li>
        				<li>Open time: 8:30 AM - 5:30 PM</li>
        				<li>Highlight:</li>
        				<ul>
        						<li class="highlight">Have fun with many exciting games available at the water park with your friends and family</li>
        						<li class="highlight">Enjoy the swimming pool, Jacuzzi and Japanese Onsen bathing area</li>
        						<li class="highlight">Show off in the mud arena</li>
        						<li class="highlight">Team up to explore the fascinating Dinosaur Park</li>
        				</ul>
        			</ul>
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
        			Viewing Destination
        		</h1>
        		<div class="modal3-body">
        			<img src="img/destinations/Water Park.jpg" atl="mo ta anh">
        			<ul class="modal3-body-des">
        				<li>Name: Mikazuki Water Park</li>
        				<li>Location: Nguyen Tat Thanh Street, Hoa Hiep Nam, Lien Chieu, Da Nang</li>
        				<li>Price: 20$</li>
        				<li>Open time: All day</li>
        				<li>Highlight:</li>
        				<ul>
        						<li class="highlight">Experience a Japanese-style water park with friends at Water Park</li>
        						<li class="highlight">Enjoy playing in indoor wave pools, water slides and hot mineral onsen baths all day.</li>
        						<li class="highlight">Explore the entertainment area integrating health care and beauty services available at the water park</li>
        						<li class="highlight">Enjoy a scrumptious buffet lunch and set menu meals</li>
        				</ul>
        			</ul>
        		</div>
        		<div class="modal-footer">
        			<p class="modal-help">Need <a href="">help!</a></p>
        		</div>
        	</div>
        </div>
        <div class="modal4 js-modal4">
        	<div class="modal4-container">
        		<div class="modal4-close js-modal4-close">
        			<i class="ti-close"></i>
        		</div>
        	
        		<h1 class="modal4-header">
        			Viewing Destination
        		</h1>
        		<div class="modal4-body">
        			<img src="img/destinations/Han River.jpg" atl="mo ta anh">
        			<ul class="modal4-body-des">
        				<li>Name: Han River</li>
        				<li>Location: QL14G, Hoa Phu, Hoa Vang, Da Nang</li>
        				<li>Price: 25$</li>
        				<li>Open time: 8:30 AM - 5:30 PM</li>
        				<li>Highlight:</li>
        				<ul>
        						<li class="highlight">Have fun with many exciting games available at the water park with your friends and family</li>
        						<li class="highlight">Enjoy the swimming pool, Jacuzzi and Japanese Onsen bathing area</li>
        						<li class="highlight">Show off in the mud arena</li>
        						<li class="highlight">Team up to explore the fascinating Dinosaur Park</li>
        				</ul>
        			</ul>
        		</div>
        		<div class="modal-footer">
        			<p class="modal-help">Need <a href="">help!</a></p>
        		</div>
        	</div>
        </div>
        <div class="modal5 js-modal5">
        	<div class="modal5-container">
        		<div class="modal5-close js-modal5-close">
        			<i class="ti-close"></i>
        		</div>
        	
        		<h1 class="modal5-header">
        			Viewing Destination
        		</h1>
        		<div class="modal5-body">
        			<img src="img/destinations/Asia Park.jpg" atl="mo ta anh">
        			<ul class="modal5-body-des">
        				<li>Name: Han River</li>
        				<li>Location: QL14G, Hoa Phu, Hoa Vang, Da Nang</li>
        				<li>Price: 25$</li>
        				<li>Open time: 8:30 AM - 5:30 PM</li>
        				<li>Highlight:</li>
        				<ul>
        						<li class="highlight">Have fun with many exciting games available at the water park with your friends and family</li>
        						<li class="highlight">Enjoy the swimming pool, Jacuzzi and Japanese Onsen bathing area</li>
        						<li class="highlight">Show off in the mud arena</li>
        						<li class="highlight">Team up to explore the fascinating Dinosaur Park</li>
        				</ul>
        			</ul>
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
       		const viewHotel4 = document.querySelector('.js-view4');
       		const viewHotel5 = document.querySelector('.js-view5');
       		const modal = document.querySelector('.js-modal');
       		const modal2 = document.querySelector('.js-modal2');
       		const modal3 = document.querySelector('.js-modal3');
       		const modal4 = document.querySelector('.js-modal4');
       		const modal5 = document.querySelector('.js-modal5');
       		const modalClose = document.querySelector('.js-modal-close');
       		const modalClose2 = document.querySelector('.js-modal2-close');
       		const modalClose3 = document.querySelector('.js-modal3-close');
       		const modalClose4 = document.querySelector('.js-modal4-close');
       		const modalClose5 = document.querySelector('.js-modal5-close');
       		
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
       		
       		function showHotel4() {
       			modal4.classList.add('open'); 
       		}
       		
       		function showHotel5() {
       			modal5.classList.add('open'); 
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
       		
       		function hideHotel4() {
       			modal4.classList.remove('open');
       		}
       		
       		function hideHotel5() {
       			modal5.classList.remove('open');
       		}
       		
       		viewHotel.addEventListener('click', showHotel);
       		viewHotel2.addEventListener('click', showHotel2);
       		viewHotel3.addEventListener('click', showHotel3);
       		viewHotel4.addEventListener('click', showHotel4);
       		viewHotel5.addEventListener('click', showHotel5);
       		
       		modalClose.addEventListener('click', hideHotel);
       		modalClose2.addEventListener('click', hideHotel2);
       		modalClose3.addEventListener('click', hideHotel3);
       		modalClose4.addEventListener('click', hideHotel4);
       		modalClose5.addEventListener('click', hideHotel5);
       </script>
    </body>
</html>