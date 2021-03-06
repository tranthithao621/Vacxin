<%@page import="Model.Bean.LoaiVacxin"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>Quản lý tiêm chủng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<body>
<% LoaiVacxin loaiVacxin = (LoaiVacxin)request.getAttribute("loaiVacxin"); %>
	<div class="container-fluid">
		<!-- header -->

		<!-- nav -->
		<div >
				<nav class="navbar navbar-inverse" >
				  <div class="container-fluid">
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="">Trang chủ</a></li>
					<li><a href="ThemLoaiVacxinServlet">Loại Vacxin</a></li>
					<li class=""><a href="ShowListVacxin">Vacxin</a></li>
					<li class=""><a href="ShowListCTVacxin">CTVacxin</a></li>
					<li class=""><a  href="KhachHangServlet">Quản lý khách hàng</a></li>
					<li class=""><a  href="QuanLyTiemChungServlet">Quản lý tiêm chủng</a></li>
					<li class="dropdown"><a href="#">Thống Kê-Báo Cáo</a></li>
				    </ul>
				    <ul class="nav navbar-nav navbar-right">
				      <li><a href="#" data-toggle="modal" data-target="#dangKy"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
				      <li><a href="#" data-toggle="modal" data-target="#dangnhap"><span class="glyphicon glyphicon-log-in"></span> Log out</a></li>
				    </ul>
				  </div>
				</nav>

		</div>
		<!-- content -->
		<div class="container-fluid" style="margin-left:10px;min-height:100%">
			<div class="row">
				
				<div class="col-sm-4">
				</div>
				<div class="col-sm-4">
					<form style="margin-top:26px;"  method="post" action="SuaLoaiVacxinServlet?id=<%=loaiVacxin.getMaLoaiVacxin() %>" >
					  <div class="form-group">
					    <label for="pwd">Tên loại Vacxin:</label>
					    <input type="text" class="form-control" id="pwd" name="tenLoaiVacxin" value="<%=loaiVacxin.getTenLoaiVacxin() %>" >
					  </div>
					  <button type="submit" class="btn btn-primary" name="sua">Sửa</button>
					  <button type="submit" class="btn btn-primary" name="quaylai">Quay lại</button>
					</form>
				</div>
				<div class="col-sm-4">
				</div>
			</div>
		</div>
		<!-- footer -->
		
			<!-- <footer class="container-fluid text-center">
			  <a href="#myPage" title="To Top">
			    <span class="glyphicon glyphicon-chevron-up"></span>
			  </a>
			  <p>Bác sĩ tư vấn:  Trần Thanh Tài <a href="http://www.w3schools.com" title="Visit w3schools">www.facebook.com/taibong</a></p>
			</footer> -->


					

					</div>
	</div>
</body>
</html>