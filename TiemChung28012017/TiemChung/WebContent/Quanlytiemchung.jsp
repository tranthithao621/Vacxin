<%@page import="Model.Bean.KhachHang"%>
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
<title>Quản lý tiêm chủng</title>
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
		<!-- content -->
		<div class="container" style="height: 100%">
			<div class="col-sm-4"></div>
			<form action="Timkhachhang" method="post">
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
			</form>
			<%
				KhachHang nv1 = (KhachHang) request.getAttribute("kh");
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

	
						<div class="form-group">
							<label for="address">Tên vacxin :</label> <select id="Vacxin"
								name="mavacxin" class="form-control">
								<option value="">Chọn Vacxin</option>
							</select>
						</div>
						<div class="form-group" style="margin-top: 15px">
							<label for="gia"> Xuất Xứ</label> <select id="Gia"
								class="form-control" name="xuatxu">
								<option value="">Chọn xuất xứ</option>
							</select>
						</div>


						<input type="hidden" class="form-control" id="MaKH"
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
						<div class="form-group" style="margin-top: 15px">
							<label for="gia"> Lần tiêm</label> <select id="Lantiem"
								class="form-control" name="lantiem" readonly>
								<option value=""></option>
							</select>
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
				String xuatxu = (String) request.getAttribute("xuatxu");
				String ngaytaitiem1 = (String) request.getAttribute("ngaytaitiem");
				String tiemdu = (String) request.getAttribute("loi");
				String khachhang = (String) request.getAttribute("makhachhang");
				if (khachhang != null) {
			%>
			<h5><%=khachhang%></h5>
			<%
				} else if (xuatxu != null) {
			%>
			<h5><%=xuatxu%></h5>
			<%
				} else if (ngaytaitiem != null) {
			%>
			<h5><%=ngaytaitiem1%></h5>
			<%
				}
				String thanhcong = (String) request.getAttribute("thanhcong");
				if (thanhcong != null) {
			%>

			<h4 alert alert-success><%=thanhcong%></h6>
				<%
					} else if (tiemdu != null) {
				%>
				<h4><%=tiemdu%></h6>
					<%
						}
					%>
				
		</center>

		<div class="row" style="margin-left: 10px; margin-right: 10px">

			<div class="col-sm-1"></div>
			<div class="col-sm-10">

				<table width="1000" align="center" class='table table-striped'>
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
						List<KhachHang> nv = (List<KhachHang>) request.getAttribute("lstkh");

						for (KhachHang x : nv) {
					%>
					<tr>
						<td><%=x.getMaKH()%></td>
						<td><%=x.getTenKH()%></td>
						<td><%=x.getTuoi()%></td>
						<td><%=(x.isGioiTinh() == true) ? "Nam" : "Nữ"%></td>
						<td><%=x.getDiaChi()%></td>
						<td><%=x.getsoDT()%></td>
						<td><%=x.getEmail()%></td>
						<td><a class="btn btn-primary"
							href="QuanLyTiemChungServlet?makh=<%=x.getMaKH()%>"> Đăng ký</a>
						</td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div class="col-sm-1"></div>


		</div>
<script type="text/javascript">
							 $(document).ready(function() {
								$("#Vacxin").load("danhSachVacxinServlet");

								$("#Vacxin").on('change', function() {
									var maVacxin = document.getElementById("Vacxin").value;
									$("#Gia").load("danhSachGiaServlet?maVacxin="+ maVacxin);
									var makh = document.getElementById("MaKH").value;
									if (makh != null) {
									$("#Lantiem").load("lanTiemServlet?makh="+ makh+ "&mavacxin="+ maVacxin);
											}

										});
								});
						</script>

	</div>
</body>
</html>