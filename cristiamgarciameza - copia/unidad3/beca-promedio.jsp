<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center>
    <h2 style="color: #791107">Calculadora de Beca</h2>
    <form method="post">
        <h3 style="color: #2677a5">Introduce las 7 calificaciones</h3>
        <%
            int numCalificaciones = 7;
            float suma = 0;
            for (int i = 1; i <= numCalificaciones; i++) {
        %>
        Calificación <%= i %>: <input type="text" name="calificacion<%= i %>" /><br/>
        <%
            }
            if (request.getMethod().equalsIgnoreCase("POST")) {
                for (int i = 1; i <= numCalificaciones; i++) {
                    String calificacionStr = request.getParameter("calificacion" + i);
                    float calificacion = Float.parseFloat(calificacionStr);
                    suma += calificacion;
                }
                float promedio = suma / numCalificaciones;
                String mensajeBeca;
                if (promedio >= 80 && promedio <= 85.99) {
                    mensajeBeca = "tiene derecho a beca de $300";
                } else if (promedio >= 86 && promedio <= 90.99) {
                    mensajeBeca = "tiene derecho a beca de $500";
                } else if (promedio >= 91 && promedio <= 95.99) {
                    mensajeBeca = "tiene derecho a beca de $700";
                } else if (promedio >= 96 && promedio <= 100) {
                    mensajeBeca = "tiene derecho a beca de $1,000";
                } else {
                    mensajeBeca = "no tiene derecho a beca";
                }
        %>
        <h3>Resultado:</h3>
        <p>El promedio es: <%= promedio %></p>
        <p>El estudiante <%= mensajeBeca %>.</p>
        <%
            }
        %>
        <input type="submit" value="Calcular Beca"/><br><br>
        <a href="index.jsp">Regresar</a>
    </form>
</center>