<%@page import="Model.Bean.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Case</title>
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
					<li class=""><a href="QuanLyTiemChungServlet">Quản lý tiêm
							chủng</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Thống kê - Báo cáo <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="thongkeSV">Vacxin Đã Tiêm</a></li>
							<li><a href="TonKhoSV">Vacxin Tồn Kho</a></li>
							<li><a href="hethanSV">Vacxin Hết hạn</a></li>
							<li><a href="nhieunhatSV">Vacxin Nhiều Nhất, Ít Nhất</a></li>
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

		</div>

		<!-- content -->
		<div class="container-fluid"
			style="margin-left: 10px; min-height: 600px">
			<table width="500" align="center">

				<tr>
					<td align="center"><h1>
							<b>Quản Lý Khách Hàng</b>
						</h1></td>
				</tr>


			</table>
			<br>
			<form action="KhachHangServlet" method="post">
				<table width=500 align="center">
					<tr>
						<td align="left" width="350"><input type="text"
							name='txttimkiemkh' class='form-control'></td>
						<td width="20"></td>
						<td align="left"><input type="submit" name='btntimkiemkh'
							value='Tìm Kiếm' class="btn btn-primary" style="color:white"></td>
					</tr>

				</table>
			</form>
			<table width="1200" align="center">
				<tr>

					<td width="700" align="left"><br>
						<h3>Danh sách khách hàng được tiêm</h3></td>

					<td align="right" width=400><a href="ThemKhachHang.jsp"><input
							type="button" value=" Thêm" class="btn btn-primary"></a></td>


				</tr>
			</table>



			<table width="1100" align="center" class='table'>
				<tr>

					<th width="200">Tên Khách Hàng</th>
					<th width="100">Tuổi</th>
					<th width="100">Giới Tính</th>
					<th width="200">Địa Chỉ</th>
					<th width="150">SĐT</th>
					<th width="200">Email</th>
					<th colspan="2" align="center">Tùy Chọn</th>

				</tr>

				<%
					ArrayList<KhachHang> listKhachHang = (ArrayList<KhachHang>) request.getAttribute("listKhachHang");
					for (KhachHang kh : listKhachHang) {
				%>
				<tr>
					<td><%=kh.getTenKH()%></td>
					<td><%=kh.getTuoi()%></td>
					<td><%=kh.isGioiTinh()%></td>
					<td><%=kh.getDiaChi()%></td>
					<td><%=kh.getsoDT()%></td>
					<td><%=kh.getEmail()%></td>
					<td><a class="btn btn-primary" href="KhachHangServlet?maKHSua=<%=kh.getMaKH()%>"><span
							style="color: white">Sửa</span></a></td>
					<td><a class="btn btn-danger" href="DeleteKhachHangServlet?maKHXoa=<%=kh.getMaKH()%>"><span
							style="color: white">Xóa</span></a></td>
				</tr>
				<%
					}
				%>

			</table>


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