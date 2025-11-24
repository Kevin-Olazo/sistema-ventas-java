<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 24/11/2025
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agregar Producto</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center min-vh-100">

    <div class="col-12 col-md-5 col-lg-4 border shadow p-4">
        <h2 class="text-center text-primary">Registrar Producto</h2>
        <form action="" method="POST">

            <div class="form-floating mb-3">
                <input class="form-control" type="text" name="txtNombreProducto" id="txtNombreProducto"
                       placeholder="NombreProducto">
                <label for="txtNombreProducto">Nombre del producto: </label>
            </div>

            <div class="form-floating mb-3">
                <input class="form-control" type="text" name="txtPrecioProducto" id="txtPrecioProducto"
                       placeholder="PrecioProducto">
                <label for="txtPrecioProducto">Precio (S/.): </label>
            </div>

            <div class="form-floating mb-3">
                <input class="form-control" type="text" name="txtCantidadProducto" id="txtCantidadProducto"
                       placeholder="CantidadProducto">
                <label for="txtCantidadProducto">Cantidad: </label>
            </div>

            <div class="d-grid">
                <button class="btn btn-primary btn-lg" type="submit">Registrar producto</button>
            </div>

        </form>
    </div>

</div>



</body>
</html>

