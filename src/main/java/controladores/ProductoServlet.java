package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegistrarProducto")
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("txtNombreProducto");
        double precio = Double.parseDouble(req.getParameter("txtPrecioProducto"));
        int cantidad = Integer.parseInt(req.getParameter("txtCantidadProducto"));

        req.setAttribute("nombre", nombre);
        req.setAttribute("precio", precio);
        req.setAttribute("cantidad", cantidad);

        req.getRequestDispatcher("salidaProducto.jsp").forward(req,resp);

    }
}
