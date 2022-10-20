<%@page import="com.mafv.libreria.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<%

    String matricula = request.getParameter("matricula");
    
    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    Vehiculo vehiculo = new Vehiculo();
    vehiculo.setMatricula(matricula);

    int index = vehiculos.indexOf(vehiculo);

    vehiculo = vehiculos.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehiculo</title>
</head>
<body>

    <form action="modificarvehiculo.jsp" method="post">
        <label for="matricula">Matricula</label>
        <input type="text" name="matricula" id="matricula" readonly value="<%= vehiculo.getMatricula()%>">
        <label for="marca">Marca</label>
        <input type="text" name="marca" id="marca" value="<%= vehiculo.getMarca()%>">
        <label for="modelo">Modelos</label>
        <input type="text" name="modelo" id="modelo" value="<%= vehiculo.getModelo()%>">
        <label for="color">Color</label>
        <input type="text" name="color" id="color" value="<%= vehiculo.getColor()%>">
        <label for="revisado">Revisado</label>
        <input type="text" name="revisado" id="revisado" value="<%= vehiculo.getRevisado()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>