<%@ page import="modelos.Usuario" %><%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 24/11/2025
  Time: 01:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usuario</title>
</head>

<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");

%>

<body>


<div class="container">
    <h2>Usuario registrado</h2>
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

<div class="container">
    <h2>Usuario Expression Language (Usando \${})</h2>
    <p>Nombre: ${usuario.nombre}
    </p>
    <p>Correo: ${usuario.correo}
    </p>
    <p>Fecha de Nacimiento: ${usuario.fechaNacimiento}
    </p>
    <p>Edad: ${usuario.edad}
    </p>
    <p>Fecha de Registro: ${usuario.fechaRegistro}
    </p>
</div>


</body>
</html>
