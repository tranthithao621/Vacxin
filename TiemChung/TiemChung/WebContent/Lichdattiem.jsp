<%@page import="java.util.List"%>
<%@page import="Model.Bean.LichDatTiem"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		<div class="container-fluid" style="margin-left: 10px; height: 100%">
			<div class="row">

				<div class="col-sm-2"></div>
				<div class="col-sm-4">
					<form action="LichDatTiemServlet" method="get">
						<div>
							<label for="address"> Chọn ngày :</label> <input type="date"
								class="form-control" id="address" name="s">
						</div>
						<div style="margin-top: 10px">
							<button type="submit" class="btn btn-primary"
								style="margin-right: 10px">Xem</button>

						</div>
					</form>

				</div>
				<div class="col-sm-4">
					<form action="LichDatTiemServlet" method="get">
						<div class="form-group" style="margin-top: 25px">

							<input type="text" class="form-control" id="search"
								placeholder="Tìm Kiếm" name="s">
						</div>

						<div style="margin-top: 10px">
							<button type="submit" class="btn btn-primary"
								style="margin-right: 10px">Tìm Kiếm</button>


						</div>


					</form>
				</div>
			</div>
			<div>
				<table class="table table-hover">
					<thead>
						<tr>

							<th>Tên khách hàng</th>


							<th>Tên Vacxin</th>
							<th>Ngày hẹn tiêm</th>
							<th>Trang Thai</th>
						</tr>
					</thead>
					<tbody>
						<%
							int total_page = Integer.parseInt(request.getAttribute("total_page").toString());
							int curent_page;
							int limit = 2;
							int start;
							if (request.getParameter("page") != null) {
								curent_page = Integer.parseInt(request.getParameter("page").toString());
								start = (curent_page - 1) * limit;
							} else {
								curent_page = 0;
								start = 0;
							}

							int max = start + limit;

							ArrayList<LichDatTiem> list = (ArrayList<LichDatTiem>) request.getAttribute("dstk");

							if (max > list.size()) {
								max = list.size();
							}
							for (int i = start; i < max; i++) {
						%>
						<tr>
							<td><%=list.get(i).getTenKH()%></td>
							<td><%=list.get(i).getTenVacxin()%></td>
							<td><%=list.get(i).getNgayDat()%></td>
							<td><%=list.get(i).getTrangThai() == 0 ? "Chưa tiêm" : "Đã tiêm"%></td>
						</tr>
						<%
							}
						%>



					</tbody>
				</table>
			</div>
			<center>
				<%
					if (total_page > 0) {
				%>
				<ul class="pagination">
					<li><a
						href="LichDatTiemServlet?page=1<%=request.getParameter("s") != null ? "&s=" + request.getParameter("s") : ""%>">
							<< </a></li>
					<%
						for (int i = 0; i < total_page; i++) {
					%>

					<li class="<%=curent_page == (i + 1) ? "active" : ""%>"><a
						href="LichDatTiemServlet?page=<%=i + 1%><%=request.getParameter("s") != null ? "&s=" + request.getParameter("s") : ""%>"><%=i + 1%></a></li>

					<%
						}
					%>
					<li><a
						href="LichDatTiemServlet?page=<%=total_page%><%=request.getParameter("s") != null ? "&s=" + request.getParameter("s") : ""%>">
							>> </a></li>
				</ul>
				<%
					}
				%>

			</center>

		</div>




	</div>
	</div>
</body>
</html>