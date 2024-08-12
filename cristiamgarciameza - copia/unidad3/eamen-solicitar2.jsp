<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Examen Unidad 3 - Solicitar</title>
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
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Examen Unidad 3</h1>
    <form action="examen-ejecutar2.jsp" method="post" onsubmit="return validateDatabaseName()">
        <label for="databaseName">Introduce el nombre de la base de datos:</label>
        <input type="text" id="databaseName" name="databaseName" maxlength="10" required>
        <input type="submit" value="Enviar">
    </form>
</div>

<script>
    function validateDatabaseName() {
        const dbName = document.getElementById('databaseName').value;
        const regex = /^[a-z]{5,10}$/; // Solo letras minúsculas, de 5 a 10 caracteres

        if (!regex.test(dbName)) {
            alert("El nombre de la base de datos debe tener entre 5 y 10 caracteres, solo letras minúsculas y sin espacios o caracteres especiales.");
            return false;
        }

        return true;
    }
</script>
</body>
</html>