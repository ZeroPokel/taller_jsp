<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehiculo</title>
</head>
<body>

    <form action="altavehiculo.jsp" method="post">
        <label for="matricula">Matricula</label>
        <input type="text" name="matricula" id="matricula" value="">
        <label for="marca">Marca</label>
        <input type="text" name="marca" id="marca" value="">
        <label for="modelo">Modelo</label>
        <input type="text" name="modelo" id="modelo" value="">
        <label for="color">Color</label>
        <input type="text" name="color" id="color" value="">
        <label for="revisado">Revisado</label>
        <input type="text" name="revisado" id="revisado" value="">
        <input type="submit" value="Nuevo">
    </form>
    
</body>
</html>