<%@ page contentType="text/html; charset=utf-8" language="java"%>

<%!
	String n;
%>

<%
	n = request.getParameter("nom");
%>
<center>
	<h2 style="color: #AB22C6">Tu nombre es:</h2>
	<h2 style="color: #C62222"><%=n%></h2>
	<a href="index.jsp">Regresar</a>
</center>