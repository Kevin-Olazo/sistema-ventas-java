<%--@elvariable id="producto" type="modelos.Producto"--%>
<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 24/11/2025
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="container d-flex justify-content-center align-items-center min-vh-100">

    <div class="col-12 col-md-5 col-lg-4 border shadow p-4">
        <h2 class="text-center text-primary">Datos producto</h2>
        <p>Actualizado con Expression Language <strong>\${}</strong></p>

        <p><strong>Nombre producto: </strong> ${producto.nombre}</p>

        <p><strong>Precio S/: </strong> ${producto.precio}</p>

        <p><strong>Precio con IGV S/: </strong> ${producto.precioConIGV}</p>

        <p><strong>Cantidad: </strong> ${producto.cantidad}</p>

    </div>

</div>


</body>
</html>
