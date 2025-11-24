package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Producto;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/RegistrarProducto")
public class ProductoServlet extends HttpServlet {

    ArrayList<Producto> listaProductos = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("txtNombreProducto");
        double precio = Double.parseDouble(req.getParameter("txtPrecioProducto"));
        int cantidad = Integer.parseInt(req.getParameter("txtCantidadProducto"));

        Producto p = new Producto(nombre, precio, cantidad);

        listaProductos.add(p);

        req.setAttribute("producto", p);

        req.getRequestDispatcher("salidaProducto.jsp").forward(req,resp);

    }
}
