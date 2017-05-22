package trabajoFinalGoogleComputing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;


/**
 * Servlet implementation class MiAutenticaServlet
 */
public class MiAutenticaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiAutenticaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("testing") != null) {
		      UserService userService = UserServiceFactory.getUserService();
		      User currentUser = userService.getCurrentUser();
		      if (currentUser != null) {
		        response.setContentType("text/plain");
		        response.getWriter().println("Welcome to Register " + currentUser.getNickname());
		      } else {
		        response.sendRedirect(userService.createLoginURL(request.getRequestURI()));
		      }
		    }
	}
}

