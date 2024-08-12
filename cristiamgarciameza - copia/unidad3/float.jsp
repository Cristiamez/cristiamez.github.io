<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
 float dolar; 
 float libra;
 float quetzal;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Uso de float en JSP</title>
</head>
<body>
	<%
	dolar= 18.25f; //parsing
	libra= (float)23.08;
	quetzal= 2.35f;
%>
<center>
	<h2 style="color: green"> Hoy viernes 28 de junio de 2024 el tipo de cambios de divisas es a:</h2>
	<h3 style="color: purple"><%=dolar%> pesos mexicanos el dolar</h3>
	<h3 style="color:purple"><%=libra%>  pesos mexicanos la libra esterlina</h3>
	<h3 style="color: purple"><%=quetzal%> pesos mexicanos el quetzal</h3>
	<a href="index.jsp">Regresar</a>
</center>

</body>
</html>