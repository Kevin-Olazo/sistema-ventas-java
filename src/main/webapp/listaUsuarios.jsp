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

<div class="container d-flex flex-column justify-content-center align-items-center min-vh-100 py-5">

    <%--Creamos un Card con Bootstrap--%>
    <div class="card shadow border-0 rounded-4">

        <%--Creamos el Header del Card--%>
        <div class="card-header bg-primary text-white p-4 d-flex justify-content-between align-items-center rounded-top-4">
            <h3 class="m-0"><i class="bi bi-people-fill me-2"></i>Usuarios Registrados</h3>
            <a href="index.jsp" class="btn btn-light text-primary fw-bold">
                <i class="bi bi-plus-circle me-1"></i> Nuevo Usuario
            </a>
        </div>

        <%--Creamos el Body del Card--%>
        <div class="card-body p-4">

            <%--Creamos la tabla dentro del body --%>
            <div class="table-responsive">
                <table class="table table-hover table-striped align-middle">

                    <thead class="table-dark text-center">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Fecha de Nacimiento</th>
                        <th scope="col">Fecha de Registro</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tbody>

                    <%

                        List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");

                        if (usuarios != null) {
                            for (int i = 0; i < usuarios.size(); i++) {
                                Usuario u = usuarios.get(i);


                    %>
                    <tr>
                        <td class="text-center fw-bold"><%=(i + 1)%>
                        </td>
                        <td class="fw-medium"><%=u.getNombre()%>
                        </td>
                        <td class="text-secondary"><%=u.getCorreo()%>
                        </td>
                        <td class="text-nowrap text-center"><%=u.getFechaNacimientoFormateada()%>
                        </td>
                        <td class="text-nowrap text-center"><%=u.getFechaRegistroFormateada()%>
                        </td>
                    </tr>
                    <% }

                    }
                    %>

                    </tbody>

                </table>
            </div>
        </div>
    </div>

</div>
</body>
</html>
