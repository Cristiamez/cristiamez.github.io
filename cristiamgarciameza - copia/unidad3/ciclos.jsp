<%@ page contentType="text/html; charset=utf-8" language="java"%>
<center>
	<h2 style="color:#AD454E">Uso de ciclos en JSP</h2>
	<h3 style="color:#DC601E">For</h3>
<%
  for (int x = 1; x <= 6; x++){
%>
    <h4 style="color:#1A3CC7">TIDSM32</h4>
<%
  }
%>
    <h3 style="color:#DC601E">While</h3>
<%
  int a = 1;
  while (a <= 3){
%>
    <h4 style="color:#1A3CC7">UT de la Costa</h4>
<%
    a++;
  }
%>
   <a href="index.jsp">Regresar</a>
</center>