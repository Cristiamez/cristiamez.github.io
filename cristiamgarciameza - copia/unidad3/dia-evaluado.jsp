<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center>
    <h2>Evaluación de Día</h2>
    <%
        String dia = request.getParameter("dia").toLowerCase();
        String mensajeDia;
        switch (dia) {
            case "domingo":
                mensajeDia = "es el primer día de la semana.";
                break;
            case "lunes":
                mensajeDia = "es el segundo día de la semana.";
                break;
            case "martes":
                mensajeDia = "es el tercer día de la semana.";
                break;
            case "miércoles":
                mensajeDia = "es el cuarto día de la semana.";
                break;
            case "jueves":
                mensajeDia = "es el quinto día de la semana.";
                break;
            case "viernes":
                mensajeDia = "es el sexto día de la semana.";
                break;
            case "sábado":
                mensajeDia = "es el séptimo día de la semana.";
                break;
            default:
                mensajeDia = "no es un día válido de la semana.";
                break;
        }
    %>
    <p>El día <strong><%= dia %></strong> <%= mensajeDia %></p>
</center>
