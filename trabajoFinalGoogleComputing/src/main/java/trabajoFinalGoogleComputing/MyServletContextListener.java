package trabajoFinalGoogleComputing;

	import com.googlecode.objectify.ObjectifyService;
	import javax.servlet.ServletContextListener;
	import javax.servlet.ServletContextEvent;

	public class MyServletContextListener implements ServletContextListener {
	  public void contextInitialized(ServletContextEvent event) {
	    ObjectifyService.register(Empleado.class);
	    ObjectifyService.register(Empresa.class);
	    ObjectifyService.register(Cliente.class);
	  }

	  public void contextDestroyed(ServletContextEvent event) {
	  }
	}
