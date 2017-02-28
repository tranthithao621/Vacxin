<%@page import="Model.Bean.Vacxin"%>
<%@page import="Model.Bean.LoaiVacxin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm mới vacxin</title>
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
	<div>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header"></div>
			<ul class="nav navbar-nav">

				<li class="active"><a href="">Trang chủ</a></li>
				<li><a href="ThemLoaiVacxinServlet">Loại Vacxin</a></li>
				<li class=""><a href="ShowListVacxin">Vacxin</a></li>
				<li class=""><a href="ShowListCTVacxin">CTVacxin</a></li>
				<li class=""><a href="KhachHangServlet">Quản lý khách hàng</a></li>
				<li class=""><a href="QuanLyTiemChungServlet">Quản lý tiêm
						chủng</a></li>
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

	<div class="container-fluid" style="margin-left: 10px">
		<div style="margin-left: 500px">
			<h2>Thêm Thông Tin Vacxin</h2>
		</div>
		<div class="container">

			<form action="AddVacxin" method="post">
				<center style="margin-left: 300px">
					<%
						Vacxin v = (Vacxin) request.getAttribute("vacxin");
					%>
					<div class="row">
						<div class="col-md-2">

							<label for="email">Mã vacxin :</label>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" id="mavacxin"
								readonly="true" hidden="hidden">
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-2">

							<label for="email">Tên vacxin :</label>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" id="mavacxin"
								name="tenvacxin" value=<%=v == null ? "" : v.getTenVacxin()%>>
						</div>
						<%
							String loiten = (String) request.getAttribute("loiten");
							if (loiten != null) {
						%>
						<h6>
							<%=loiten%></h6>
						<%
							}
						%>
					</div>
					<br>
					<div class="row">
						<div class="col-md-2">

							<label for="email">Tên loại vacxin:</label>
						</div>
						<div class="col-md-4">
							<select class="form-control" id="sel1" name="maloaivacxin">
								<%
									ArrayList<LoaiVacxin> ds = (ArrayList<LoaiVacxin>) request.getAttribute("loaivacxin");
									int n = ds.size();
									for (int i = 0; i < n; i++) {
										if (v != null) {
											if (v.getMaLoaiVacxin() == ds.get(i).getMaLoaiVacxin()) {
								%>
								<option value='<%=ds.get(i).getMaLoaiVacxin()%>'
									selected="selected"><%=ds.get(i).getTenLoaiVacxin()%></option>
								<%
									}
										}
								%>
								<option value='<%=ds.get(i).getMaLoaiVacxin()%>'><%=ds.get(i).getTenLoaiVacxin()%></option>
								<%
									}
								%>
							</select>
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-md-2">

							<label for="email">Tuổi tối thiểu:</label>
						</div>
						<div class="col-md-4">
							<input type="number" class="form-control" id="mavacxin"
								name="tuoitoithieu"
								value=<%=v == null ? "0" : v.getTuoiToiThieu()%>>
						</div>
						<%
							String loituoi = (String) request.getAttribute("loituoi");
							if (loituoi != null) {
						%>
						<h6>
							<%=loituoi%></h6>
						<%
							}
						%>
					</div>
					<br>
					<div class="row">
						<div class="col-md-2">

							<label for="email">Tuổi tối đa :</label>
						</div>
						<div class="col-md-4">
							<input type="number" class="form-control" id="tuoitoida"
								name="tuoitoida" value=<%=v == null ? "0" : v.getTuoiToiDa()%>>
						</div>
						<%
							if (loituoi != null) {
						%>
						<h6>
							<%=loituoi%></h6>
						<%
							}
						%>
					</div>
					<br>
					<div class="row">
						<div class="col-md-2">

							<label for="email">Số mũi :</label>
						</div>
						<div class="col-md-4">
							<input type="number" class="form-control" id="somui" name="somui"
								value=<%=v == null ? "0" : v.getSoMui()%>>
						</div>
						<%
							String somui = (String) request.getAttribute("loisomui");
							if (somui != null) {
						%>
						<h6>
							<%=somui%></h6>
						<%
							}
						%>
					</div>
					<br>
					<%
						String thanhcong = (String) request.getAttribute("thanhcong");
						if (thanhcong != null) {
					%>
					<h6>
						<%=thanhcong%></h6>
					<%
						}
					%>
				</center>

				<center>

					<button type="submit" class="btn btn-primary">Thêm</button>
					<button type="submit" class="btn btn-primary" name="quaylai">Quay
						lại</button>

				</center>
			</form>




		</div>
</body>
</html>