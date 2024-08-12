<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
  String nombre="Cristiam";
  int anio = 2024;
  float grados = 27.4f; //Se hace un pasring/casting en Java
  double euro = 19.53;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Declaracion de Variables en JSP</title>
</head>
<body>
	<center>
		<h2 style="color:blue">Que tal, mi nombre es <%=nombre%></h2>
		<h2 style="color:red">Hoy es viernes 28 de junio de <%=anio%></h2>
		<h2 style="color:green">El clima tiene <%=grados%> ºC y el Euro se cotiza en <%=euro%> pesos mexicanos</h2>
		<a href="index.jsp">Regresar</a>
	</center>

</body>
</html>