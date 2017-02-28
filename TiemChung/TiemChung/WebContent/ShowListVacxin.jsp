<%@page import="Model.Bean.Vacxin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách vacxin</title>
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
			<nav class="navbar navbar-inverse">
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
			</div>
		</div>
		<!-- content -->
		<div class="container">
			<form class="navbar-form navbar-right" action="FindVacxin"
				method="post">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Nhập tên vacxin cần tìm" name="tenvacxin">
					<div class="input-group-btn">
						<button class="btn btn-primary" type="submit" style="height: 34px">
							Tìm kiếm</button>
					</div>
				</div>
			</form>
		</div>
		<center>
		<h3 style="margin-left: 500px">Danh Sách Vacxin</h3>
		</center>
		
		<div class="container">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Mã vacxin</th>
						<th>Tên vacxin</th>
						<th>Mã loại vacxin</th>
						<th>Tuổi tối thiểu</th>
						<th>Tuổi tối đa</th>
						<th>Số mũi</th>

					</tr>
				</thead>
				<tbody>
					<%
						ArrayList<Vacxin> ds = (ArrayList<Vacxin>) request.getAttribute("vacxin");
						int n = ds.size();
						for (int i = 0; i < n; i++) {
					%>
					<tr>
						<td><%=ds.get(i).getMaVacxin()%></td>
						<td><%=ds.get(i).getTenVacxin()%></td>
						<td><%=ds.get(i).getMaLoaiVacxin()%></td>
						<td><%=ds.get(i).getTuoiToiThieu()%></td>
						<td><%=ds.get(i).getTuoiToiDa()%></td>
						<td><%=ds.get(i).getSoMui()%></td>

						<td><a
							href="ShowEditVacxin?mavacxin=<%=ds.get(i).getMaVacxin()%>">Sửa</a></td>
						<td><a
							href="DeleteVacxin?mavacxin=<%=ds.get(i).getMaVacxin()%>">Xóa</a></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<td><form action="ShowAddVacxin" method='post'>
					<button type="submit" class="btn btn-primary">Thêm</button>
				</form></td>
		</div>

		<!-- footer -->

		<footer class="container-fluid text-center"> <a
			href="#myPage" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a> </footer>
</body>
</html>