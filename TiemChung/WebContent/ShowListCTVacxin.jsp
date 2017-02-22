<%@page import="Model.Bean.CTVacxin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách chi tiết vacxin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<body>
	<div class="container-fluid">
		<!-- header -->
		<header class="container-fluid"
			style="height:200px;border-bottom:1px solid rgb(242, 242, 242)">
		<center>
			<img src="images/logo4.jpg" style="margin-top: 10px" width="350px"
				height="200px" />
		</center>

		</header>


		<!-- nav -->
		<div>
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">

				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Trang chủ</a></li>
					<li><a href="#">Loại Vacxin</a></li>
					</li>
					<li class=""><a href="ShowListVacxin">Vacxin</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Quản lý khách hàng</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Quản lý tiêm chủng</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Thống Kê-Báo Cáo</a></li>


				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-toggle="modal" data-target="#dangKy"><span
							class="glyphicon glyphicon-user"></span> Admin</a></li>
					<li><a href="#" data-toggle="modal" data-target="#dangnhap"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
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
							<form>
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input id="email"
										type="text" class="form-control" name="email"
										placeholder="Email">
								</div>
								<div class="input-group" style="margin-top: 10px">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input id="password"
										type="password" class="form-control" name="password"
										placeholder="Password">
								</div>
								<div style="margin-top: 10px" class="center">
									<center>
										<button type="submit" class="btn btn-primary">Đăng ký</button>
									</center>

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
							<form>
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input id="email"
										type="text" class="form-control" name="email"
										placeholder="Email">
								</div>
								<div class="input-group" style="margin-top: 10px">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input id="password"
										type="password" class="form-control" name="password"
										placeholder="Password">
								</div>
								<div style="margin-top: 10px" class="center">
									<center>
										<button type="submit" class="btn btn-primary">Đăng
											nhập</button>
									</center>

								</div>
							</form>
						</div>
					</div>

				</div>
				</dit>
			</div>
			<!-- content -->
			<div class="container">
				<form class="navbar-form navbar-right" action="FindCTVacxin"
					method="post">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Nhập xuất xứ vacxin" name="xuatxu">
						<div class="input-group-btn">
							<button class="btn btn-primary" type="submit"
								style="height: 34px">Tìm kiếm</button>
						</div>
					</div>
				</form>
			</div>
			<center>
				<h3>Danh Sách Chi Tiết Vacxin</h3>
			</center>

			<div class="container">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Mã Lô Nhập</th>
							<th>Mã Vacxin</th>
							<th>Hạn Sử Dụng</th>
							<th>Gía Bán</th>
							<th>Xuất Xứ</th>
							<th>Số lượng</th>

						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<CTVacxin> ds = (ArrayList<CTVacxin>) request.getAttribute("ctvacxin");
							int n = ds.size();
							for (int i = 0; i < n; i++) {
						%>
						<tr>
							<td><%=ds.get(i).getMaLoNhap()%></td>
							<td><%=ds.get(i).getMaVacxin()%></td>
							<td><%=ds.get(i).getHanSuDung()%></td>
							<td><%=ds.get(i).getGiaBan()%></td>
							<td><%=ds.get(i).getXuatXu()%></td>
							<td><%=ds.get(i).getSoLuong()%></td>
							<td><a
								href="ShowEditCTVacxin?malonhap=<%=ds.get(i).getMaLoNhap()%>">Sửa</a></td>
							<td><a
								href="DeleteCTVacxin?mactvacxin=<%=ds.get(i).getMaLoNhap()%>">Xóa</a></td>

						</tr>
						<%
							}
						%>
					
				</table>

				<form action="ShowAddCTVacxin">
					<button type="submit" class="btn btn-primary">Thêm</button>
				</form>

			</div>

			<!-- footer -->

			<footer class="container-fluid text-center"> <a
				href="#myPage" title="To Top"> <span
				class="glyphicon glyphicon-chevron-up"></span>
			</a> </footer>
		</div>
</body>
</html>