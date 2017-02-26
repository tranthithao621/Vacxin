<%@page import="Model.Bean.Vacxin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Bean.CTVacxin"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sửa Chi Tiết Vacxin</title>
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
		<div class="container-fluid" style="margin-left: 10px">
			<center>
				<h2>Sửa Thông Tin Chi Tiết Vacxin</h2>
			</center>


			<div class="container">

				<form action="EditCTVacxin" method="post">
					<center style="margin-left: 300px">
						<%
							CTVacxin ctVacxin = (CTVacxin) request.getAttribute("ct1vacxin");
						%>
						<div class="row">
							<div class="col-md-2">

								<label for="email">Mã Lô Nhập :</label>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control" id="mavacxin"
									readonly="true" name="malonhap"
									value="<%=ctVacxin.getMaLoNhap()%>">

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
											if (ctVacxin.getMaVacxin() == ds.get(i).getMaVacxin()) {
									%>
									<option selected="selected"
										value="<%=ds.get(i).getMaVacxin()%>"><%=ds.get(i).getTenVacxin()%></option>
									<%
										} else
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
									name="hansudung" value="<%=ctVacxin.getHanSuDung()%>">

							</div>
							<%
								String loiten = (String) request.getAttribute("loi");
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

								<label for="email">Gía Bán :</label>
							</div>
							<div class="col-md-4">
								<input type="number" class="form-control" id="mavacxin"
									name="giaban" value="<%=ctVacxin.getGiaBan()%>">
							</div>
							<%
								String loigiaban = (String) request.getAttribute("loigiaban");
								if (loigiaban != null) {
							%>
							<h6>
								<%=loigiaban%></h6>
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
									name="xuatxu" value="<%=ctVacxin.getXuatXu()%>">
							</div>

						</div>
						<br>
						<div class="row">
							<div class="col-md-2">

								<label for="email">Số Lượng :</label>
							</div>
							<div class="col-md-4">
								<input type="number" class="form-control" id="mavacxin"
									name="soluong" value="<%=ctVacxin.getSoLuong()%>">
							</div>
							<%
								String loisoluong = (String) request.getAttribute("loisoluong");
								if (loisoluong != null) {
							%>
							<h6>
								<%=loisoluong%></h6>
							<%
								}
							%>
						</div>

						<br>
					</center>
					<center>
						<button type="submit" class="btn btn-primary">Sửa</button>
						<button type="submit" class="btn btn-primary" name="quaylai">Quay
							lại</button>
					</center>

				</form>
			</div>
</body>
</html>