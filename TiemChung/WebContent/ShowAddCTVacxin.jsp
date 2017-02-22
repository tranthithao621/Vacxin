<%@page import="Model.Bean.CTVacxin"%>
<%@page import="Model.Bean.Vacxin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Thêm Chi Tiết Vacxin</title>
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
		<header class="container-fluid"
			style="height:200px;border-bottom:1px solid rgb(242, 242, 242)">
		<center>
			<img src="images/logo4.jpg" style="margin-top: 10px" width="350px"
				height="200px" />
		</center>

		</header>

		<div>
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header"></div>
				<ul class="nav navbar-nav">

					<li class="active"><a href="#">Trang chủ</a></li>
					<li><a href="#">Loại Vacxin</a></li>
					</li>
					<li class=""><a href="ShowListVacxin">Vacxin</a></li>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Quản lý khách hàng</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Quản lý tiêm chủng</A></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Thống kê - Báo cáo</a></li>
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
		<div class="container-fluid" style="margin-left: 10px">
			<center>
				<h2>Thêm Thông Tin Chi Tiết Vacxin</h2>
			</center>


			<div class="container">

				<form action="AddCTVacxin" method="post">
					<center style="margin-left: 300px">
						<%
							CTVacxin ct = (CTVacxin) session.getAttribute("ctvacxin");
						%>
						<div class="row">
							<div class="col-md-2">

								<label for="email">Mã Lô Nhập :</label>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control" id="mavacxin"
									readonly="true" name="malonhap" hidden="hidden">
							</div>
						</div>
						<br>

						<div class="row">
							<div class="col-md-2">

								<label for="email">Tên vacxin:</label>
							</div>
							<div class="col-md-4">
								<select class="form-control" id="sel1" name="mavacxin">
									<%
										ArrayList<Vacxin> ds = (ArrayList<Vacxin>) request.getAttribute("vacxin");
										int n = ds.size();
										for (int i = 0; i < n; i++) {
									%>
									<option value='<%=ds.get(i).getMaLoaiVacxin()%>'><%=ds.get(i).getTenVacxin()%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-2">

								<label for="email">Hạn sử dụng:</label>
							</div>
							<div class="col-md-4">
								<input type="date" class="form-control" id="mavacxin"
									name="hansudung" value="<%=ct == null ? "" : ct.getHanSuDung()%>">

							</div>

						</div>
						<br>

						<div class="row">
							<div class="col-md-2">

								<label for="email">Gía Bán :</label>
							</div>
							<div class="col-md-4">
								<input type="number" class="form-control" id="mavacxin"
									name="giaban" value="<%=ct == null ? "0" : ct.getGiaBan()%>">
							</div>
							<%
								String loigiaban = (String) request.getAttribute("loigiaban");
								if (loigiaban != null) {
							%>
							<h6><%=loigiaban%></h6>
							<%
								}
							%>
						</div>
						<br>
						<div class="row">
							<div class="col-md-2">

								<label for="email">Xuất Xứ:</label>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control" id="mavacxin"
									name="xuatxu" value="<%=ct == null ? "" : ct.getXuatXu()%>">
							</div>

						</div>
						<br>
						<div class="row">
							<div class="col-md-2">

								<label for="email">Số Lượng :</label>
							</div>
							<div class="col-md-4">
								<input type="number" class="form-control" id="mavacxin"
									name="soluong" value="<%=ct == null ? "0" : ct.getSoLuong()%>">
							</div>
							<%
								String loisoluong = (String) request.getAttribute("loisoluong");
								if (loisoluong != null) {
							%>
							<h6><%=loisoluong%></h6>
							<%
								}
							%>
						</div>
						<br>
					</center>
					<center>
						<%
							String loi = (String) request.getAttribute("loi");
							if (loi != null) {
						%>
						<h6><%=loi%></h6>
						<%
							}
						%>
						<button type="submit" class="btn btn-primary">Thêm</button>
						<button type="submit" class="btn btn-primary" name="quaylai">Quay
							lại</button>
					</center>

				</form>
			</div>
</body>
</html>