<%@ page import="modelos.Usuario" %>
<%--@elvariable id="usuario" type="modelos.Usuario"--%>

<%--

  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 24/11/2025
  Time: 01:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<html>
<head>
    <title>salidaUsuario.jsp</title>
</head>

<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");

%>

<body class="bg-secondary">
<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="col-12 col-md-5 col-lg-4 border shadow p-4 bg-white rounded">
        <h2 class="text-center mb-4 text-primary">Usuario registrado</h2>
        <p>Nombre: <%= usuario.getNombre() %>
        </p>
        <p>Correo: <%= usuario.getCorreo() %>
        </p>
        <p>Fecha de Nacimiento: <%= usuario.getFechaNacimiento()%>
        </p>
        <p>Edad: <%= usuario.getEdad() %>
        </p>
        <p>Fecha de Registro: <%= usuario.getFechaRegistro() %>
        </p>
    </div>
</div>

<div class="container">
    <h2>Usuario Expression Language (Usando \${})</h2>
    <p>Nombre: ${usuario.nombre}
    </p>
    <p>Correo: ${usuario.correo}
    </p>
    <p>Fecha de Nacimiento: ${usuario.fechaNacimientoFormateada}
    </p>
    <p>Edad: ${usuario.edad}
    </p>
    <p>Fecha de Registro: ${usuario.fechaRegistroFormateada}
    </p>
</div>


</body>
</html>
