<<%@ page language='java' contentType="text/html" %>

<%@page import="com.mafv.libreria.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");

    Vehiculo vehiculo = new Vehiculo();
    vehiculo.setMatricula(matricula);


    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    vehiculos.remove(vehiculo);

    session.setAttribute("vehiculos", vehiculos);

    response.sendRedirect("vehiculos.jsp");

%>