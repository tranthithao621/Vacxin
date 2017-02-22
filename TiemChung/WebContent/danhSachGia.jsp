<%@page import="Model.Bean.CTVacxin"%>
<%@page import="java.util.List"%>
<%@page import="Model.Bean.Vacxin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		if (request.getAttribute("dsgia") != null) {
			List<CTVacxin> dsgia = (List<CTVacxin>) request.getAttribute("dsgia");
			for (CTVacxin e : dsgia) {
	%>
	<option value="<%=e.getMaLoNhap()%>"><%=e.getXuatXu()%></option>
	<%
		}
		}
	%>
</body>
</html>