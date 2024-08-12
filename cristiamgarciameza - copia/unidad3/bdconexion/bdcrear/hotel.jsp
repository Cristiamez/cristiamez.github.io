<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection, java.sql.Statement"%>
<%@ include file = "../parametros.jsp" %>
<%!
	Connection connect;
	Statement bdcrear;
	String sql = "create database hotel";
%>
<center>
	<h2 style="color: blue">Creacion de la BD Hotel</h2>
<%
	try{
		Class.forName(driver);
		connect = DriverManager.getConnection(url, user, password);
		bdcrear = connect.createStatement();
		bdcrear.execute(sql);
%>
		<h3 style="color: green">La BD hotel fue creada con exito</h3>
<%
	}catch(Exception x){
%>
		<h3 style="color: red"><%=x.getMessage()%></h3>
<%
	} finally{
		bdcrear.close();
		connect.close();
	}
%>
	<a href="index.jsp">Regresar</a>
</center>