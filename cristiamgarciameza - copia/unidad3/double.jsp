<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
  double m1;
  double m2;
  double m3;
  double m4;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Uso de Double en JSP</title>
</head>
<body>
	<%
	m1= 0.15;
	m2= 0.25;
	m3= 0.35;
	m4= 0.99;
%>
<center>
	<h2 style="color:blue">Converciones de centimetros a metros:</h2>
	<h3 style="color:green">15 centimetros = <%=m1%> metros</h3>
	<h3 style="color:green">25 centimetros = <%=m2%> metros</h3>
	<h3 style="color:green">35 centimetros = <%=m3%> metros</h3>
	<h3 style="color:green">99 centimetros = <%=m4%> metros</h3>
	<a href="index.jsp">Regresar</a>
</center>

</body>
</html>