<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@ include file="bdconexion/parametros.jsp"%>
<%
    String nom = request.getParameter("nom");
    String action = request.getParameter("action");
%>
<center>
    <h2 style="color:red">Examen Unidad 3</h2>
    <%
        if (nom != null && !nom.trim().isEmpty()) {
            Connection connect = null;
            Statement stmt = null;
            try {
                Class.forName(driver);
                connect = DriverManager.getConnection(url, user, password);
                stmt = connect.createStatement();

                if ("create".equals(action)) {
                    String sqlCreate = "CREATE DATABASE " + nom;
                    stmt.execute(sqlCreate);
                    out.println("<h3 style='color:green'>La base de datos " + nom + " fue creada con éxito.</h3>");
                } else if ("delete".equals(action)) {
                    String sqlDelete = "DROP DATABASE " + nom;
                    stmt.executeUpdate(sqlDelete);
                    out.println("<h3 style='color:red'>La base de datos " + nom + " fue eliminada con éxito.</h3>");
                } else {
                    out.println("<h3 style='color:orange'>Acción no reconocida.</h3>");
                }
            } catch (SQLException e) {
                out.println("<h3 style='color:red'>Error SQL: " + e.getMessage() + "</h3>");
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                out.println("<h3 style='color:red'>Error del controlador JDBC: " + e.getMessage() + "</h3>");
                e.printStackTrace();
            } finally {
                try {
                    if (stmt != null) stmt.close();
                    if (connect != null) connect.close();
                } catch (SQLException e) {
                    out.println("<h3 style='color:red'>Error al cerrar la conexión: " + e.getMessage() + "</h3>");
                }
            }
        } else {
            out.println("<h3 style='color:red'>El nombre de la base de datos no puede estar vacío.</h3>");
        }
    %>
</center>
<center>
    <form method="post">
        <input type="hidden" name="nom" value="<%= nom %>">
        <button type="submit" name="action" value="delete" style="color:red">Eliminar Base de Datos</button>
    </form>
</center>
<center>
    Desarrollardor: 
    <td>Cristiam Gracia Meza</td><br><br>
    <td>Número de teléfono : 323-143-2556</td><br><br>
    <h3>Contacto via Whatsapp:</h3> 
    <a href="https://wa.me/523231432556?text=Que%20tal,%20me%20gustaría%20más%20información%20sobre%20la%20casa%20en%20renta."><img src="img/whatsapp-logo.png" width="80" height="80"></a>
    <br><br>
    <h3>Contacto via Telegram</h3>
    <a href="https:/t.me/joinchat/+523231432556"><img src="img/telegram-logo.png" width="80" height="80"></a><br>

 <br>
    <a href="examen-solicitar.jsp">Regresar</a>
</center>
