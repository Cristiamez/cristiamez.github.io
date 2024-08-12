<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Examen Unidad 3 - Ejecutar</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #444;
        }
        p {
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Examen Unidad 3</h1>
    <%
        String dbName = request.getParameter("database apliweb");
        Connection connection = null;
        Statement statement = null;

        try {
            // Cargar el driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Conectar a la base de datos MySQL
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "password");

            statement = connection.createStatement();
            // Crear la base de datos
            String createDatabase = "CREATE DATABASE " + dbName;
            statement.executeUpdate(createDatabase);
            out.println("<p>La base de datos '" + dbName + "' ha sido creada exitosamente.</p>");

            // Eliminar la base de datos
            String dropDatabase = "DROP DATABASE " + dbName;
            statement.executeUpdate(dropDatabase);
            out.println("<p>La base de datos '" + dbName + "' ha sido eliminada exitosamente.</p>");
        } catch (SQLException e) {
            out.println("<p>Error al crear o eliminar la base de datos: " + e.getMessage() + "</p>");
        } catch (ClassNotFoundException e) {
            out.println("<p>Error al cargar el driver JDBC: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                out.println("<p>Error al cerrar la conexión: " + e.getMessage() + "</p>");
            }
        }
    %>
    <p>Programador: [Tu Nombre]</p>
    <p>Contacto: <a href="https://t.me/tuusuario">Telegram</a>, <a href="https://wa.me/tuusuario">WhatsApp</a></p>
</div>
</body>
</html>