package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Usuario;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

@WebServlet("/RegistrarUsuario")
public class UsuarioServlet extends HttpServlet {

    ArrayList<Usuario> usuarios = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Enviamos la lista
        req.setAttribute("usuarios", usuarios);
        // Enviamos el tamaño actual de la lista (opcional)
        req.setAttribute("cantidad", usuarios.size());

        req.getRequestDispatcher("listaUsuarios.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("txtNombre");
        String correo = req.getParameter("txtCorreo");

        // La fecha llega como String en formato yyyy-MM-dd
        String fechaString = req.getParameter("txtFechaNacimiento");
        // Convertimos fechaString a LocalDate
        LocalDate fechaNacimiento = LocalDate.parse(fechaString);

        LocalDate fechaRegistro = LocalDate.now();

        Usuario usuario = new Usuario();

        usuario.setNombre(nombre);
        usuario.setCorreo(correo);
        usuario.setFechaNacimiento(fechaNacimiento);
        usuario.setFechaRegistro(fechaRegistro);

        usuarios.add(usuario);

        req.setAttribute("usuario", usuario);

        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }
}
