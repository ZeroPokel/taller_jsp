<%@ page language='java' contentType="text/html" %>

<%@page import="com.mafv.libreria.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%

  Vehiculo vehiculo1 = new Vehiculo();
  vehiculo1.setMatricula("1234ABC");
  vehiculo1.setMarca("Seat");
  vehiculo1.setModelo("Leon");
  vehiculo1.setColor("Blanco");
  vehiculo1.setRevisado("S");

  List<Vehiculo> vehiculos = new ArrayList<Vehiculo>();
  vehiculos.add(vehiculo1);

  session.setAttribute("vehiculos", vehiculos);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taller</title>
</head>
<body>
    <h1>Menu principal - Taller</h1>
    <p><a href="vehiculo/vehiculos.jsp">Vehiculos</a></p>
</body>
</html>