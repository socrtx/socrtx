package trabajoFinalGoogleComputing;


import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;


public class AltaEmpleadoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	  @Override
	  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		    Empleado miempleado;
			String nombre = req.getParameter("p_nombre");
			String apellidos = req.getParameter("p_apellidos");
			String centroTrabajo = req.getParameter("p_centroTrabajo");
			String horario = req.getParameter("p_horario");
			String dias = req.getParameter("p_dias");
			String direccion = req.getParameter("p_direccion");
			String email = req.getParameter("p_email");
			String telefono = req.getParameter("p_telefono");
	
			if (nombre != "") {
				miempleado = new Empleado(nombre, apellidos, centroTrabajo, horario, dias, direccion, email, telefono);
		    } else {
		    	miempleado = new Empleado();
			}
			ObjectifyService.ofy().save().entity(miempleado).now();
			resp.sendRedirect("/alta_empleados.jsp?p_nombre=" + nombre);
	  }
}
