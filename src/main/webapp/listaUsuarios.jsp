<%@ page import="java.util.List" %>
<%@ page import="modelos.Usuario" %>
<%--@elvariable id="usuario" type="modelos.Usuario"--%>
<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 24/11/2025
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="bg-light">

<div class="container d-flex flex-column justify-content-center align-items-center min-vh-100 py-5" >
    <h1 class="text-center text-uppercase text-primary-emphasis mb-4">Lista de usuarios registrados</h1>

    <table class="table table-striped table-bordered">

        <thead class="table-header">
        <tr>
            <th>#</th>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Fecha de Nacimiento</th>
            <th>Fecha de Registro</th>
        </tr>
        </thead>

        <tbody>

        <%

            List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");

            if (usuarios != null) {
                for (int i = 0; i < usuarios.size(); i++) {
                    Usuario u = usuarios.get(i);


        %>
        <tr>
            <td ><%=(i + 1)%>
            </td>
            <td><%=u.getNombre()%>
            </td>
            <td><%=u.getCorreo()%>
            </td>
            <td><%=u.getFechaNacimientoFormateada()%>
            </td>
            <td><%=u.getFechaRegistroFormateada()%>
            </td>
        </tr>
        <% }

        }
        %>

        </tbody>


    </table>
</div>
</body>
</html>
