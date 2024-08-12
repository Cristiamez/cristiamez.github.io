<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager" import="java.sql.Connection"%>
<%!
   String driver = "org.postgresql.Driver"; //Controlador o Driver de PostgresSQL
   String url = "jdbc:postgresql://localhost:5432/";//Ruta de conexion del superUsuario PostgresQL
   String user = "postgres";
   String password = "12345";
   Connection conexion;
%>
<%
    out.print("<center><h2>Conexion al SuperUsuario postgres</h2>");
    try{
    	Class.forName(driver); 

    	conexion = DriverManager.getConnection(url, user, password);
    	out.print("Conexion exitosa");
    	conexion.close(); 
    }		catch(Exception e)

    {
    	out.print("Ocurrio el siguiente error:"+e);
    }
    out.print("<br><a href='index.jsp'>Regresar</a></center>");
%>