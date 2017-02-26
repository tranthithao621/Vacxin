<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Quản lý tiêm chủng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body id="myPage">
			<!-- header -->
	<header class="container-fluid" style="height:200px;border-bottom:1px solid rgb(242, 242, 242)">
			<center><img src="images/logo4.jpg" style="margin-top:10px" width="350px" height="200px" /></center>
			
		</header> 
	<!-- nav -->
	<div >
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <ul class="nav navbar-nav">
			      <li class="active"><a href="#">Trang chủ</a></li>
			      <li><a href="#">Tư vấn</a></li>
			      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tìm kiếm<span class="caret"></span></a>
				        <ul class="dropdown-menu">
				          <li><a href="search.html">Loại Vacxin</a></li>
				          <li><a href="#">Vacxin</a></li>
				        </ul>
				      </li>
			      
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			      <li><a href="#" data-toggle="modal" data-target="#dangKy"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
			      <li><a href="#" data-toggle="modal" data-target="#dangnhap"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
			    </ul>
			  </div>
			</nav>

			<!-- Modal -->
			 <!-- Modal dang ky-->
			  <div class="modal fade" id="dangKy" role="dialog">
			    <div class="modal-dialog">
			    
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">Đăng ký</h4>
			        </div>
			        <div class="modal-body">
			         	<form class="form-horizontal">
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Tên tài khoản:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="pwd">Mật khẩu:</label>
						    <div class="col-sm-10"> 
						      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="pwd">Xác nhận mật khẩu:</label>
						    <div class="col-sm-10"> 
						      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Tên khách hàng:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Tuổi:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Email:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Địa chỉ:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Số điện thoại:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group">
						    <label class="control-label col-sm-2" for="email">Giới tính:</label>
						    <div class="col-sm-10">
						      <input type="email" class="form-control" id="email" placeholder="Enter email">
						    </div>
						  </div>
						  <div class="form-group"> 
						    <div class="col-sm-offset-2 col-sm-10">
						      <button type="submit" class="btn btn-default">Đăng ký</button>
						    </div>
						  </div>
						</form>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			  <!-- Modal dang nhap-->
			  <div class="modal fade" id="dangnhap" role="dialog">
			    <div class="modal-dialog">
			    
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">Đăng nhập</h4>
			        </div>
			        <div class="modal-body">
			         	<form action="LoginServlet" method="post">
						  <div class="input-group">
						    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						    <input id="text" type="text" class="form-control" name="tenTaiKhoan" placeholder="Nhập tên tài khoản">
						  </div>
						  <div class="input-group" style="margin-top:10px">
						    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						    <input id="password" type="password" class="form-control" name="matKhau" placeholder="Nhập mật khẩu">
						  </div>
						  <div style="margin-top:10px" class="center">
						  		<center>
						  			<button type="submit" class="btn btn-primary" name="dangnhap">Đăng nhập</button>
						  		</center>
						  		
						  </div>	
						</form>
						<%if(request.getAttribute("error") != null){
							%>
								<div class="alert alert-danger"><%=request.getAttribute("error") %></div>
							<%
						}%>
			        </div>
			      </div>
			      
			    </div>
			  </div>
	</div>
	<!-- slide show -->

<div class="w3-content w3-display-container">
  <img class="mySlides" src="images/img_fjords.jpg" style="width:100%" height="400px">
  <img class="mySlides" src="images/img_fjords.jpg" style="width:100%" height="400px">
  <img class="mySlides" src="images/img_fjords.jpg" style="width:100%" height="400px">
  <img class="mySlides" src="images/img_fjords.jpg" style="width:100%" height="400px">

  <a class="w3-btn-floating w3-display-left" onclick="plusDivs(-1)">&#10094;</a>
  <a class="w3-btn-floating w3-display-right" onclick="plusDivs(1)">&#10095;</a>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
	<!-- content -->
	<div class="w3-content">

		<div class="w3-row w3-margin">

		<div class="w3-third">
		  <img src="images/img_5terre.jpg" style="width:100%;min-height:200px">
		</div>
		<div class="w3-twothird w3-container">
		  <h2>5 Terre</h2>
		  <p>
		  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		  </p>
		</div>

		</div>
		<div class="w3-row w3-margin">

		<div class="w3-third">
		  <img src="images/img_monterosso.jpg" style="width:100%;min-height:200px">
		</div>
		<div class="w3-twothird w3-container">
		  <h2>Monterosso</h2>
		  <p>
		  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		  </p>
		</div>

		</div>
		<div class="w3-row w3-margin">

		<div class="w3-third">
		  <img src="images/img_vernazza.jpg" style="width:100%;min-height:200px">
		</div>
		<div class="w3-twothird w3-container">
		  <h2>Vernazza</h2>
		  <p>
		  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		  </p>
		</div>

		</div>
		<div class="w3-row w3-margin">

		<div class="w3-third">
		  <img src="images/img_manarola.jpg" style="width:100%;min-height:200px">
		</div>
		<div class="w3-twothird w3-container">
		  <h2>Manarola</h2>
		  <p>
		  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		  </p>
		</div>

		</div>
		<div class="w3-row w3-margin">

		<div class="w3-third">
		  <img src="images/img_corniglia.jpg" style="width:100%;min-height:200px">
		</div>
		<div class="w3-twothird w3-container">
		  <h2>Corniglia</h2>
		  <p>
		  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		  </p>
		</div>

		</div>
		<div class="w3-row w3-margin">

		<div class="w3-third">
		  <img src="images/img_riomaggiore.jpg" style="width:100%;min-height:200px">
		</div>
		<div class="w3-twothird w3-container">
		  <h2>Riomaggiore</h2>
		  <p>
		  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
		  </p>
		</div>

		</div>
	<!-- pagination -->
	<center>

			<ul class="pagination">
			  <li><a href="#"><<</a></li>
			  <li><a href="#">1</a></li>
			  <li class="active"><a href="#">2</a></li>
			  <li><a href="#">3</a></li>
			  <li><a href="#">4</a></li>
			  <li><a href="#">5</a></li>
			  <li><a href="#">>></a></li>
			</ul>
	</center>
	
	</div>
<div class="w3-container w3-grey">
			  			<h1>Trung Tâm Y Tế Dự Phòng</h1> 
			  
					</div>

					<div class="w3-row-padding">

					<div class="w3-third">
					  <h2>About us</h2>
					  <p>Address: Fpt city Đà Nẵng</p>
					  <p>Email: preventivehealthcenter@gmail.com.</p>
					  <p>SĐT: 0511.382.0471</p>
					  <p>Fax: 0511.382.0471</p>
					</div>

					<div class="w3-third">
					  <h2>Bác sĩ Tư Vấn</h2>
					  <p>Trần Thanh Tài - SĐT 0120.624.2344.</p> 
					  
					</div>

					

					</div>
</body>
</html>
