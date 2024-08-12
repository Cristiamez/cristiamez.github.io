<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.DriverManager, java.sql.Connection"%>
<%!
   String controlador = "org.postgresql.Driver";
   String ruta = "jdbc:postgresql://localhost:5432/escuela";
   String usuario = "postgres";
   String contrasenia = "12345";
   Connection conexion;
%>
<%
  out.print("<center><h2>Conexion a BD escuela</h2>");
  try{
  	Class.forName(controlador);
  	conexion = DriverManager.getConnection(ruta, usuario, contrasenia);
  	out.print("Conexion exitosa a BD escuela");
  	conexion.close();
  } catch(Exception e) {
  	out.print("Ocurrio un error: "+e);
  }
    out.print("<br><a href='index.jsp'>Regresar</a></center>");
%>