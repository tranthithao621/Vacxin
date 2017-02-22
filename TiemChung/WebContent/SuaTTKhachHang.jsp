<%@page import="Model.Bean.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Case</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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
		<!-- nav -->
		<header class="container-fluid"
			style="height:200px;border-bottom:1px solid rgb(242, 242, 242)">
		<center>
			<img src="src/logo4.jpg" style="margin-top: 10px" width="350px"
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
							<li><a href="quanlydattiem.html">Đặt Tiêm</a></li>
							<li><a href="lichsutiemphong">Lịch sử tiêm phòng</a></li>
							<li><a href="lichdattiem">Lịch Đặt Tiêm</a></li>
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
		<div class="container-fluid"
			style="margin-left: 10px; min-height: 600px">
			<table width="500" align="center">
				<tr>
					<td align="center">
						<h1>
							<b>Sửa Thông Tin Khách Hàng</b>
						</h1>
					</td>
				</tr>
			</table>
			<br>
			<%
				KhachHang kh = (KhachHang) request.getAttribute("khSua");
				//request.setAttribute("maKHSua",kh.getMaKH());
			%>
			<form action="KhachHangServlet" method="post">
				<table width="450" align="center" cellpadding="5">

					<tr>
						<td>Mã</td>
					</tr>
					<tr>
						<td width="300"><input type="text" name='txtmakhsua'
							class='form-control' value="<%=kh.getMaKH()%>" readonly><br></td>
					</tr>
					<%
						String kttenkh = (String) request.getAttribute("kttenkhsua");
						if (kttenkh != null) {
					%>
					<tr>
						<td><span style="color: red"><span
								style="font-size: 13px">Bạn chưa nhập tên khách hàng!</span></span></td>
					</tr>
					<%
						}
					%>
					<tr>
					<tr>
						<td>Họ Tên</td>
					</tr>
					<tr>
						<td width="300"><input type="text" name='txttenkhsua'
							class='form-control' value="<%=kttenkh == null ? kh.getTenKH() : ""%>"><br></td>
					</tr>
					<%
						String kttuoikh = (String) request.getAttribute("kttuoikhsua");
						String kttuoikh1 = (String) request.getAttribute("kttuoikh1sua");
						if (kttuoikh != null) {
					%>
					<tr>
						<td><span style="color: red"><span
								style="font-size: 13px">Bạn chưa nhập tuổi khách hàng !</span></span></td>
					</tr>
					<%
						}
					%>
					<%
						if (kttuoikh1 != null) {
					%>
					<tr>
						<td><span style="color: red"><span
								style="font-size: 13px">Nhập tuổi sai !</span></span></td>
					</tr>
					<%
						}
					%>
					<tr>
						<td>Tuổi</td>
					</tr>

					<tr>
						<td width="300"><input type="number" name='txttuoikhsua'
							class='form-control' value="<%=kttuoikh == null ? kh.getTuoi() : 0%>"><br></td>

					</tr>

					<tr>
						<td>Giới Tính<br></td>
					</tr>

					<tr>
						<td><br> <%
 	if (kh.isGioiTinh() == true) {
 %> <label
							class="radio-inline"> <input type="radio"
								name="radiogioitinhkhsua" checked="checked" value="True">Nam
						</label> <label class="radio-inline"> <input type="radio"
								name=radiogioitinhkhsua value="False">Nữ
						</label> <%
 	} else {
 %> <label class="radio-inline"> <input
								type="radio" name=radiogioitinhkhsua value=True>Nam
						</label> <label class="radio-inline"> <input type="radio"
								name=radiogioitinhkhsua checked="checked" value=False>Nữ
						</label> <%
 	}
 %></td>

					</tr>

					<tr>
						<td><br>Địa Chỉ</td>
					</tr>
					<tr>

						<td width="300"><input type="text" name='txtdiachikhsua'
							class='form-control' value='<%=kh.getDiaChi()%>'><br></td>

					</tr>
					<tr>
						<td>Số Điện Thoại</td>
					</tr>
					<tr>

						<td width="300"><input type="text" name='txtsodtkhsua'
							class='form-control' value=<%=kh.getsoDT()%>><br></td>

					</tr>
					<tr>
						<td>Email</td>
					</tr>
					<tr>

						<td width="300"><input type="text" name='txtemailkhsua'
							class='form-control' value=<%=kh.getEmail()%>><br></td>

					</tr>

					<tr>

						<td><input type="submit" value=" Sửa " class="btn btn-danger"
							name='btnsuakh'>&nbsp; <input type="submit"
							value=" Hủy " class="btn btn-danger"></td>
					</tr>
				</table>
			</form>
		</div>
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