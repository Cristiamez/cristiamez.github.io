<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
 int x, y, z, suma;
%>
<%
  x = 30;
  y = 23;
  z = 3;
  suma = x + y + z;
%>
<center>
	<h1 style="color: #AF0E96"> Suma de int:</h1>
	<h2 style="color: #0409A2;"> La suma de x = <%=x%> + y = <%=y%> + z = <%=z%> = <%=suma%></h2>
	<a href="index.jsp">Regresar</a>
</center>