<%@page import="Model.Bean.LichSuTiemPhong"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sửa tiêm chủng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<div>
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">

				<ul class="nav navbar-nav">
					<li class="active"><a href="Home.jsp">Trang chủ</a></li>
					<li><a href="ThemLoaiVacxinServlet">Loại Vacxin</a></li>
					<li class=""><a href="ShowListVacxin">Vacxin</a></li>
					<li class=""><a href="ShowListCTVacxin">CTVacxin</a></li>
					<li class=""><a href="KhachHangServlet">Quản lý khách hàng</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Quản lý tiêm chủng <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="LichDatTiemServlet">Lịch đặt tiêm</a></li>
							<li><a href="LichSuTiemPhongServlet">Lịch sử tiêm phòng</a></li>
							<li><a href="QuanLyTiemChungServlet">Quản lý tiêm chủng</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Thống kê - Báo cáo <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="TKVacxinDaTiem">Vacxin Đã Tiêm</a></li>
							<li><a href="TonKhoSV">Vacxin Tồn Kho</a></li>
							<li><a href="hethanSV">Vacxin Hết hạn</a></li>

						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-toggle="modal" data-target="#dangKy"><span
							class="glyphicon glyphicon-user"></span> Admin</a></li>
					<li><a href="LogoutServlet"><span
							class="glyphicon glyphicon-log-in"></span> Log out</a></li>
				</ul>
			</div>
			</nav>
		</div>
		<div class="container">

			<form action="ThemTiemChung" method="get">
				<div class="row">
					<%LichSuTiemPhong ls = (LichSuTiemPhong)request.getAttribute("lichsutiemphong");%>
					<div class="col-sm-5" style="margin-left: 100px">
						<div class="form-group">
							<label for="name">Họ tên khách hàng :</label> <input type="text"
								class="form-control" id="name" name="tenkhachhang"
								value="<%=(ls!= null) ? ls.getTenKH() : ""%>" readonly>

						</div>


						<div class="form-group">
							<label for="address">Tên vacxin :</label> <select id="Vacxin"
								name="mavacxin" class="form-control">
								<option value="<%=ls.getTenVacxin()%>">Chọn Vacxin</option>
							</select>
						</div>
						


						<input type="hidden" class="form-control" id="MaKH"
							name="makhachhang"
							value="<%=(ls != null) ? ls.getMaKH() : ""%>" readonly>




					</div>
					<div class="col-sm-5">
						<div class="form-group">
							<label for="address"> Ngày tái tiêm :</label> <input type="date"
								class="form-control" id="address" name="ngaytaitiem"
								value="<%=ls != null ? ls.getNgayTaiTiem() : ""%>">
						</div>
						<div class="form-group" style="margin-top: 15px">
							<label for="gia"> Lần tiêm</label> <select id="Lantiem"
								class="form-control" name="lantiem" readonly>
								<option value="<%=ls.getLanTiem()%> "  selected ="selected"></option>
							</select>
						</div>
						
						<div class="form-group">
							<label for="sdt">Ghi chú:</label> <input type="text"
								class="form-control" id="sdt" name="ghichu"
								value=<%=ls != null ? ls.getGhiChu(): ""%>>
						</div>

						<div></div>
					</div>
				</div>
				<center>
					<button type="submit" class="btn btn-primary">Sửa</button>
				</center>
			</form>

		</div>
</body>
</html>