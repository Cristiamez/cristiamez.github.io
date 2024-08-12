<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection"%>
<%@ include file = "parametros.jsp"%>
<%!
	Connection connect;
%>
<%
	String url2;
	url2 = url + "hospital";
	out.print("<center><h2>Conexion a la BD hospital</h2>");
	try{
		Class.forName(driver);
		connect = DriverManager.getConnection(url2, user, password);
		out.print("<h3>Se realizo la conexion exitosamente</h3>");
		connect.close();
	} catch(Exception e){
		out.print("<h3>Fallo la conexion debido a: "+e+"<h3>");
	}
	out.print("<a href=index.jsp>Regresar</a></center");
%>