<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%!
   String dia; 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Uso de String en JSP</title>
</head>
<body>
	<%
	String mes ="junio"; //Declaracion y asignacion de valaor a la variable 
	int anio; //Declaracion de variable
	dia = "viernes 28";
	anio = 2024;
    %>
    <center>
    	<h2 style="color: red">Hoy es <%=dia%> de <%=mes%> de <%=anio%></h2>
    	<a href="index.jsp">Regresar</a>
    </center>

</body>
</html> 