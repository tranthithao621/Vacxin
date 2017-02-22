<%@page import="java.util.ArrayList"%>
<%@page import="Model.Bean.LichSuTiemPhong"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
					<li><a href="#">Loại Vacxin</a></li>
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
		<div class="container-fluid" style="margin-left: 10px; height: 100%">
			<div class="row">
				<form method='get' action='LichSuTiemPhongServlet'>
					<div class="col-sm-2"></div>
					<div class="col-sm-4">

						<div>
							<label for="address"> Từ ngày :</label> <input type="date"
								class="form-control" id="address" name="txtn1">
						</div>
						<div>
							<label for="address"> Đến ngày :</label> <input type="date"
								class="form-control" id="address" name="txtn2">
						</div>
						<div style="margin-top: 10px">
							<input type="submit" name="btnxem">

						</div>

					</div>
					<div class="col-sm-4">
						<div class="form-group" style="margin-top: 25px">

							<input type="search" class="form-control" id="search"
								placeholder="Tìm Kiếm">
						</div>

						<div style="margin-top: 10px">
							<button type="submit" class="btn btn-primary"
								style="margin-right: 10px">Tìm Kiếm</button>
							<a href="lichsutiemphong">Quay lại</a>

						</div>



					</div>
				</form>
			</div>
			<%
				ArrayList<LichSuTiemPhong> lst = (ArrayList<LichSuTiemPhong>) request.getAttribute("dstk");
			%>

			<div>
				<table width="900" align="center" class='table'>
					<thead>
						<tr>
							<th>Mã Khách Hàng</th>
							<th>Tên khách hàng</th>


							<th>Tên Vacxin</th>
							<th>Ngày tiêm</th>

							<th>Ngày tái tiêm</th>
							<th>Giá</th>

							<th>Lần tiêm</th>

						</tr>
					</thead>
					<%
						for (LichSuTiemPhong x : lst) {
					%>
					<tbody>
						<tr>
							<td><%=x.getMaKH()%></td>
							<td><%=x.getTenKH()%></td>
							<td><%=x.getTenVacxin()%></td>
							<td><%=x.getNgayTiem()%></td>
							<td><%=x.getNgayTaiTiem()%></td>
							<td><%=x.getGiaBan()%></td>
							<td><%=x.getLanTiem()%></td>

						</tr>
						<%
							}
						%>


					</tbody>
				</table>
			</div>
		</div>
		<!-- footer -->
		<div class="w3-container w3-grey">
			<strong><h1>Trung Tâm Y Tế Dự Phòng</h1> </strong>

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
	</div>
</body>
</html>