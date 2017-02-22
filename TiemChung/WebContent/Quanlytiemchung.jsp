<%@page import="java.util.ArrayList"%>
<%@page import="jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator"%>
<%@page import="Model.Bean.CTVacxin"%>
<%@page import="java.util.List"%>
<%@page import="Model.Bean.Vacxin"%>
<%@page import="Model.Bean.QuanLyTiemChung"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<head>
<title>Quản lý Tiêm Chủng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">


</head>
<body background="images/log.jpg">
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
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Trang chủ</a></li>
					<li class="active"><a href="#">Loại Vacxin</a></li>
					</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Vacxin<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li>
						</ul></li>
					<li class="active"><a href="#">Quản lý khách hàng </a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Quản lý tiêm chủng<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="QuanLyTiemChungServlet">Đặt Tiêm</a></li>
							<li><a href="LichSuTiemPhongServlet">Lịch sử tiêm phòng</a></li>
							<li><a href="LichDatTiemServlet">Lịch Đặt Tiêm</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Thống kê - Báo cáo<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-toggle="modal" data-target="#dangKy"><span
							class="glyphicon glyphicon-user"></span> Admin</a></li>
					<li><a href="#" data-toggle="modal" data-target="#dangnhap"><span
							class="glyphicon glyphicon-log-in"></span> Log out</a></li>
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
		<div class="container" style="height: 100%">
			<div class="col-sm-4"></div>
			<from action="Timkhachhang">
			<div class="col-sm-4">
				<div class="form-group" style="margin-top: 25px">

					<input type="search" class="form-control" id="search"
						placeholder="Tìm Kiếm" name="timkiem">

				</div>

			</div>
			<div class="col-sm-4">
				<div style="margin-top: 25px">
					<button type="submit" class="btn btn-primary"
						style="margin-right: 10px width:300px">Tìm Kiếm</button>


				</div>
			</div>
			</from>
			<%
				QuanLyTiemChung nv1 = (QuanLyTiemChung) request.getAttribute("kh");
				Vacxin vx1 = (Vacxin) request.getAttribute("vx");
			%>


			<form action="ThemTiemChung" method="get">
				<div class="row">

					<div class="col-sm-5" style="margin-left: 100px">
						<div class="form-group">
							<label for="name">Họ tên khách hàng :</label> <input type="text"
								class="form-control" id="name" name="tenkhachhang"
								value="<%=(nv1 != null) ? nv1.getTenKH() : ""%>" readonly>

						</div>


						<jsp:include page="ChonVacxinAjax.jsp"></jsp:include>

						<input type="hidden" class="form-control" id="name"
							name="makhachhang"
							value="<%=(nv1 != null) ? nv1.getMaKH() : ""%>" readonly>




					</div>
					<div class="col-sm-5">
						<%
							String ngaytaitiem = (String) request.getAttribute("ngaytaitiem1");
						%>
						<div class="form-group">
							<label for="address"> Ngày tái tiêm :</label> <input type="date"
								class="form-control" id="address" name="ngaytaitiem"
								value="<%=ngaytaitiem != null ? ngaytaitiem : ""%>">
						</div>
						<%
							String lantiem = (String) request.getAttribute("lantiem");
						%>
						<div class="form-group">
							<label for="name">Lần Tiêm:</label> <input type="text"
								class="form-control" id="name" name="lantiem" readonly
								value="<%=lantiem != null ? lantiem : ""%>">
						</div>
						<%
							String ghichu = (String) request.getAttribute("ghichu1");
						%>
						<div class="form-group">
							<label for="sdt">Ghi chú:</label> <input type="text"
								class="form-control" id="sdt" name="ghichu"
								value=<%=ghichu != null ? ghichu : ""%>>
						</div>
						<div></div>
					</div>
				</div>
				<center>
					<button type="submit" class="btn btn-primary">Thêm</button>
				</center>
			</form>


		</div>
		<center>
			<%
				String loikhachhang = (String) request.getAttribute("khachhang");
				String vacxin = (String) request.getAttribute("mavacxin");
				String xuatxu = (String) request.getAttribute("xuatxu");
				String ngaytaitiem1 = (String) request.getAttribute("ngaytaitiem");
				if (loikhachhang != null) {
			%>
			<h5><%=loikhachhang%></h5>
			<%
				} else if (xuatxu != null) {
			%>
			<h5><%=xuatxu%></h5>
			<%
				} else if (ngaytaitiem != null) {
			%>
			<h5><%=ngaytaitiem%></h5>
			<%
				}
				String thanhcong = (String) request.getAttribute("thanhcong");
				if (thanhcong != null) {
			%>
			<h4><%=thanhcong%></h6>
				<%
					}
				%>
			
		</center>

		<div class="row" style="margin-left: 10px; margin-right: 10px">

			<div class="col-sm-1"></div>
			<div class="col-sm-10">

				<table width="1000" align="center" class='table'>
					<tr>
						<th width="70">Mã KH</th>
						<th width="200">Tên Khách Hàng</th>
						<th width="90">Tuổi</th>
						<th width="70">Giới Tính</th>
						<th width="150">Địa Chỉ</th>
						<th width="120">SĐT</th>
						<th width="180">Email</th>
						<th width="100">Đăng ký</th>
					</tr>
					<%
						List<QuanLyTiemChung> nv = (List<QuanLyTiemChung>) request.getAttribute("lstkh");

						for (QuanLyTiemChung x : nv) {
					%>
					<tr>
						<td><%=x.getMaKH()%></td>
						<td><%=x.getTenKH()%></td>
						<td><%=x.getTuoi()%></td>
						<td><%=(x.getGioiTinh() == 1) ? "Nam" : "Nữ"%></td>
						<td><%=x.getDiaChi()%></td>
						<td><%=x.getSodt()%></td>
						<td><%=x.getEmail()%></td>
						<td><a href="QuanLyTiemChungServlet?makh=<%=x.getMaKH()%>"><img
								src="images/iconedit.ico" width=20 height=20></a></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div class="col-sm-1"></div>


		</div>

	</div>
	<center></center>
</body>
</html>