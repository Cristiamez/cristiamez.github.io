<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%String nom;  
%>
 <style>
        body {
            background-color: Whithe;
        }
    </style>
<center>
		<h4 style="color:red">Examen de la unidad 3</h4>
		<form action="examen-ejecutar.jsp" method="get">
			<table>
				<tr>
					<td>Nombre de la base de datos:</td>
					<td><input type="text" name="nom" required maxlength="30" pattern="[a-zA-Z\s]{5,10}"></td>
				</tr>
				<tr>
					<td><center><input type="submit" name="action" value="create" style="color:green"  name="Enviar"></td>

				</tr>
			</table>
		</form>
		<a href="index.jsp">Regresar</a>
	</center>
