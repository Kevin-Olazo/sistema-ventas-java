<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <h2>Registrar Usuario</h2>

    <form action="RegistrarUsuario" method="POST">
        <div class="form-control">
            <label for="txtNombre">Nombre: </label>
            <input type="text" name="txtNombre" id="txtNombre">
        </div>
        <div class="form-control">
            <label for="txtFechaNacimiento">Fecha de Nacimiento: </label>
            <input type="date" name="txtFechaNacimiento" id="txtFechaNacimiento">
        </div>
        <div class="form-control">
            <label for="txtCorreo">Correo: </label>
            <input type="text" name="txtCorreo" id="txtCorreo">
        </div>
        <button type="submit" class="btn btn-primary">Registrar usuario</button>
    </form>
</div>

</body>
</html>