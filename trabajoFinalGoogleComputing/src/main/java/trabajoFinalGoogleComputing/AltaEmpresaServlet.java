package trabajoFinalGoogleComputing;


import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;


public class AltaEmpresaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	  @Override
	  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
 			Empresa miempresa;
			String empresa = req.getParameter("p_empresa");
			String direccion = req.getParameter("p_direccion");
			String cp = req.getParameter("p_cp");
			String poblacion = req.getParameter("p_poblacion");
			String provincia = req.getParameter("p_provincia");
			String actividad = req.getParameter("p_actividad");
			String email = req.getParameter("p_email");
			String telefono = req.getParameter("p_telefono");
	
			if (empresa != "") {
				miempresa = new Empresa(empresa, direccion, cp, poblacion, provincia, actividad, email, telefono);
		    } else {
		    	miempresa = new Empresa();
			}
			ObjectifyService.ofy().save().entity(miempresa).now();
			resp.sendRedirect("/alta_empresas.jsp?p_empresa=" + empresa);
	  }
}
