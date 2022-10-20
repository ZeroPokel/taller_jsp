<<%@ page language='java' contentType="text/html" %>

<%@page import="com.mafv.libreria.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%
    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    vehiculos.clear();

    session.setAttribute("vehiculos", vehiculos);
    response.sendRedirect("vehiculos.jsp");

%>