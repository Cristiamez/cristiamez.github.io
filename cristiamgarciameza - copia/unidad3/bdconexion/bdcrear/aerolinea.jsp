<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.Connection,java.sql.DriverManager,java.sql.Statement"%>
<%@ include file = "../parametros.jsp"%>
<%!
	Connection con_postgres, con_aerolinea;
	String sql_bd = "create database aerolinea";
	String sql_tabla_cliente = 
	"create table cliente (id serial primary key, nombre character varying (30) not null, edad integer not null, domicilio character varying (100) not null, telefono character varying (10) not null)";
	String sql_tabla_vuelo = 
	"create table vuelo (numero_vuelo integer primary key, origen character varying (20) not null, destino character varying (20) not null, hora_salida time with time zone not null, avion character varying (10) not null)";
	String url2 = "jdbc:postgresql://localhost:5432/aerolinea";
	Statement bdcrear, crear_tablas;
%>
<center>
	<h2 style="color:blue">Creacion de la BD Aerolinea y sus tablas Cliente y Vuelo</h2>
<%
	try{
		Class.forName(driver);
		con_postgres = DriverManager.getConnection(url, user, password);
		bdcrear = con_postgres.createStatement();
		bdcrear.execute(sql_bd);
		con_aerolinea = DriverManager.getConnection(url2, user, password);
		crear_tablas = con_aerolinea.createStatement();
		crear_tablas.execute(sql_tabla_cliente);
		crear_tablas.execute(sql_tabla_vuelo);
%>
	<h3 style="color:green">Se creo la BD Aerolinea y sus tablas Cliente y Vuelo</h3>
<%
	}catch(Exception e){
%>
	<h3 style="color:red"><%=e.getMessage()%></h3>
<%
	}finally{
		bdcrear.close();
		con_postgres.close();
		crear_tablas.close();
		con_aerolinea.close();
	}
%>
<a href="index.jsp">Regresar</a>
</center>
