package trabajoFinalGoogleComputing;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

public class AltaClienteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	  @Override
	  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		    Cliente micliente;
			String nifcif = req.getParameter("p_nifcif");		    
			String nombre = req.getParameter("p_nombre");
			String apellidos = req.getParameter("p_apellidos");
			String direccion = req.getParameter("p_direccion");
			String email = req.getParameter("p_email");
			String telefono = req.getParameter("p_telefono");
			String notas = req.getParameter("p_notas");			
	
			if (nifcif != "") {
				micliente = new Cliente(nifcif, nombre, apellidos, direccion, email, telefono, notas);
		    } else {
		    	micliente = new Cliente();
			}
			ObjectifyService.ofy().save().entity(micliente).now();
			resp.sendRedirect("/alta_clientes.jsp?p_nifcif=" + nifcif);
	  }
}
