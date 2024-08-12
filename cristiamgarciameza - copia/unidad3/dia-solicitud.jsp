<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center>
    <h2>Introduce el Nombre de un Día de la Semana</h2>
    <form action="dia-evaluado.jsp" method="post">
        <label for="dia">Día:</label>
        <input type="text" id="dia" name="dia" required/><br/>
        <input type="submit" value="Enviar"/>
    </form>
    <a href="index.jsp">Regresar</a>
</center>