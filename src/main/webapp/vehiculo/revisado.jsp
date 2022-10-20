<%@ page language='java' contentType="text/html" %>

<%@page import="com.mafv.libreria.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%
    String modelo = "";
    String marca = "";
    String color = "";
    String revisado = "";
    String matricula = request.getParameter("matricula");
    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    for(Vehiculo vehiculo: vehiculos) {
        if (vehiculo.getMatricula() == matricula){
            modelo = vehiculo.getModelo();
            marca = vehiculo.getMarca();
            color = vehiculo.getColor();
            revisado = vehiculo.getRevisado();
            vehiculos.remove(vehiculo);
            break;
        }
    }

    if (revisado.equals("S")){
        revisado = "N";
    } else {
        revisado = "S";
    }

    Vehiculo v = new Vehiculo();
    v.setMatricula(matricula);
    v.setModelo(modelo);
    v.setMarca(marca);
    v.setColor(color);
    v.setRevisado(revisado);

    vehiculos.add(v);

    session.setAttribute("vehiculos", vehiculos);
    response.sendRedirect("vehiculos.jsp");

%>