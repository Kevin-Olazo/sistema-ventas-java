<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>index.jsp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body class="bg-secondary">

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="col-12 col-md-5 col-lg-4 border shadow p-4 bg-white rounded">
        <h2 class="text-center mb-4 text-primary">Registrar Usuario</h2>

        <form action="RegistrarUsuario" method="POST">
            <div class="form-floating mb-3">
                <input class="form-control" type="text" name="txtNombre" id="txtNombre" placeholder="Nombre" required>
                <label class="form-label" for="txtNombre">Nombre: </label>
            </div>

            <div class="form-floating mb-3">
                <input class="form-control" type="date" name="txtFechaNacimiento" id="txtFechaNacimiento"
                       placeholder="Fecha" required>
                <label for="txtFechaNacimiento">Fecha de Nacimiento: </label>
            </div>

            <div class="form-floating mb-3">
                <input class="form-control" type="text" name="txtCorreo" id="txtCorreo" placeholder="nombre@ejemplo.com"
                       required>
                <label class="form-label" for="txtCorreo">Correo: </label>
            </div>

            <div class="d-grid gap-4 mb-3">
                <button class="btn btn-primary btn-lg" type="submit" >Registrar usuario</button>
            </div>

        </form>

        <div>
            <form action="RegistrarUsuario" method="GET">
                <div class="d-grid">
                <button class="btn btn-secondary btn-lg" type="submit">Ver lista de usuarios</button>
                </div>
            </form>
        </div>


    </div>

</div>
<div><a class="btn btn-primary" href="entradaProducto.jsp">Registrar producto</a></div>




</body>
</html>