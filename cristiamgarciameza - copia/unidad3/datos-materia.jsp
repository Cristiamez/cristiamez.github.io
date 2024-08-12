<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%!
   String nm = "Aplicaciones Web";
   String p = "Dr. Leonardo Hernandez Peña";
   int u = 3;
   double c = 9.56;
   String d = "Direccion de Tecnologias de la Infromacion";
   float pr = (float)9.9;
   String uni = "Universidad Tecnologica de la Costa";
   String ca = "TSU en TI Desarrollo de Software Multiplataforma";
 %>
 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<title>Materia Aplicaciones Web</title>
 </head>
 <body>
      <center>
      	<h1 style="color: red">Materia mayo - adosto 2024</h1>
      	<img src="img/logo-tidsm.png" height="100" width="100">
      	<h2 style="color: navy"><%=uni%></h2>
      	<h2 style="color: navy"><%=d%></h2>
      	<h2 style="color: navy"><%=ca%></h2>
      	<h2 style="color: navy"><%=nm%></h2>
      	<h2 style="color: navy"><%=p%></h2>
      	<h2 style="color: navy">Unidad <%=u%></h2>
      	<h2 style="color: navy">Calificacion <%=c%></h2>
      	<h2 style="color: navy">Promedio <%=pr%></h2>
      	<a href="index.jsp">Regresar</a>
      </center>
 </body>
 </html>