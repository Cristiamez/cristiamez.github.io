<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
   int anio = 2024;
   int precio;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Uso de int en JSP</title>
</head>
<body>
	<%
	  int cantidad;
	  cantidad = 5;
	  precio= 10;
	%>
	<center>
		<h3 style="color:brown">Hoy es 2 de julio de <%=anio%>.</h3>
        <h2 style="color: navy">Compre <%=cantidad%> libros a <%=precio%> pesos cada uno.</h2>
		<a href="index.jsp">Regresar</a>
	</center>

</body>
</html>