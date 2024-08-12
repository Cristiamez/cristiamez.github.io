<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
   double a, b, c; 
   float m, n, l;
%>
<%
  a = 15.234;
  b = 4.876;
  c = a * b; 
  m = 15.234f;
  n = (float) 4.876;
  l = m * n;
%>
<center>
	<h2 style="color: #D1751F">Multiplicacion de double y float</h2>
	<h3 style="color: #1E9A76;">double: a = <%=a%> * b = <%=b%> = <%=c%></h3>
	<h3 style="color: #078305;">float: m = <%=m%> * n = <%=n%> = <%=l%></h3>
	<a href="index.jsp">Regresar</a>
</center>