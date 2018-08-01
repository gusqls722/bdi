<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.bdi.test.DepartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap.css">
<link rel="stylesheet" href="/bs-3.3.7/dist/css/bootstrap-theme.css">
	<style>
		table th, td{
			text-align:center;
		}
	</style>
</head>
<%
DepartService dl = DepartService.getDL();
List<Map<String,String>> departList = dl.getDepartList();
%>
<body>
	<div class="container">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>departName</th>
					<th>departCode</th>
					<th>departCnt</th>
					<th>departEtc</th>				
				</tr>
			</thead>
			<%
			for(int i=0;i<departList.size();i++){	
				Map<String,String> depart = departList.get(i);
			%>
				<tr>
					<td><%=depart.get("departName")%></td>
					<td><%=depart.get("departCode")%></td>
					<td><%=depart.get("departCnt")%></td>
					<td><%=depart.get("departEtc")%></td>
				<tr>
			<%
			} 
			%>
		</table>
	</div>
</body>
</html>