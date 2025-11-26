<%@ page import="java.util.ArrayList" %>
<%@ page import="modelos.Producto" %>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="bg-light">


<%
    // Recuperamos la lista. Si es nula, creamos una nueva para evitar errores.
    ArrayList<Producto> misProductos = (ArrayList<Producto>) request.getAttribute("listaProductos");
    if (misProductos == null) {
        misProductos = new ArrayList<>();
    }
%>


<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-12 col-lg-10">
            <%--CARD--%>
            <div class="card shadow border-0 rounded-4 overflow-hidden">
                <%--CARD HEADER--%>
                <div class="card-header bg-primary text-white p-4 d-flex justify-content-between align-items-center">
                    <div>
                        <h2 class="h4 mb-0 d-flex align-items-center gap-2"><i class="bi bi-box-seam"></i> Lista de
                            Productos </h2>
                    </div>
                    <a href="entradaProducto.jsp" class="btn btn-light text-primary fw-bold shadow-sm"><i class="bi bi-plus-lg"></i> Nuevo Producto</a>
                </div>

                <%--CARD BODY--%>
                <div class="card-body p-0">
                    <%
                        if (misProductos.isEmpty()) { %>
                    <div class="text-center p-5 text-muted">
                        <i class="bi bi-inbox fs-1 d-block mb-3"></i>
                        <h5 class="fw-normal">No hay productos registrados aún.</h5>
                    </div>
                    <% } else { %>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover align-middle mb-0">

                            <thead class="table-light border-bottom">
                            <tr>
                                <th scope="col" class="ps-4 text-secondary text-uppercase small">#</th>
                                <th scope="col" class="text-uppercase small">Nombre</th>
                                <th scope="col" class="text-end text-uppercase small">Precio</th>
                                <th scope="col" class="text-end text-uppercase small">Cantidad</th>
                            </tr>
                            </thead>

                            <tbody>
                            <%
                                for (int i = 0; i < misProductos.size(); i++) {
                                    Producto p = misProductos.get(i);
                            %>
                            <tr>
                                <td class="text-muted"><%=(i + 1)%>
                                </td>

                                <td><span class="fw-medium text-dark"><%=p.getNombre()%></span></td>

                                <td class="text-end text-primary fw-bold">
                                    S/ <%= p.getPrecio()%>
                                </td>
                                <td class="text-end pe-4">
                                    <%= p.getCantidad()%>
                                </td>

                            </tr>
                            <% } %>

                            </tbody>
                        </table>

                    </div>
                    <%
                        } %>
                </div>
                    <%--CARD FOOTER--%>
                <div class="card-footer bg-white p-3 border-top text-end text-muted small">Sistema de Inventario v1.0</div>


            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</body>
</html>
