<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">

    <title>Tabajo Final Google Cloud</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- Custom styles for this template -->
       <link rel="stylesheet" type="text/css" href="/stylesheets/carousel.css" />
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

    
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="/">Trabajo Final Google Cloud</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
               
	
					<%
					    UserService userService = UserServiceFactory.getUserService();
					    User user = userService.getCurrentUser();
					    if (user != null) {
					        pageContext.setAttribute("user", user);
					%>

                <li class="active"><a href="#">Inicio</a></li>
                <li><a href="#about">Acerca de</a></li>
                <li><a href="#contact">Contacto</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Persiana <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Acción</a></li>
                    <li><a href="#">Otra acción</a></li>
                    <li><a href="#">Alguna cosa más aquí</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Enlace Separado</a></li>
                    <li><a href="#">Otro Enlace Separado</a></li>
                  </ul>
                </li>
				<li>
					<form class="navbar-form navbar-right" action="index.jsp">					
					        <a class="btn btn-danger btn-block " href="<%= userService.createLogoutURL(request.getRequestURI()) %>"> Cerrar Sesión </a> 
   		          	</form>
				</li> 
                <li class="active"><a href="#">${fn:escapeXml(user.nickname)}</a></li>				  					        
					<%
						} else {
					%>
                <li class="active"><a href="#">Inicio</a></li>
                <li><a href="#about">Acerca de</a></li>
                <li><a href="#contact">Contacto</a></li>					
				<li>
					<form class="navbar-form navbar-right" action="index.jsp">					
					      <a class="btn btn-success btn-block " href="<%= userService.createLoginURL(request.getRequestURI()) %>"> Iniciar Sesión </a>
   		          	</form>
				</li>   
					<%
					    }
					%>	
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="images/madrid1.jpg" alt="First slide" >
          <div class="container">
            <div class="carousel-caption">
            		<%
					    if (user != null) {
					        pageContext.setAttribute("user", user);
					%>
							 <p><a class="btn btn-lg btn-warning" href="#" role="button">Registrate hoy</a></p>
					<%
						} else {
							%>
							<p></p>
					<%
						}
					%>             
    
        	
              <h1>Escuela Técnica Superior de Ingeniería de Sistemas Informáticos</h1>
               <h2> Universidad Politécnica de Madrid</h2>
              <p>Master en Desarrollo de Aplicaciones y Servicios para Dispositivos Móviles 2016-2017</p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="images/madrid2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
            		<%
					    if (user != null) {
					        pageContext.setAttribute("user", user);
					%>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Aprende más</a></p>
					<%
						} else {
							%>
							<p></p>
					<%
						}
					%>
                            <h1>Trabajo fin de Asignatura</h1>
               <h2>Aplicación Google Cloud</h2>
              <p>Arquetipo GAE en Maven, Java Server Pages, Bootstrap, Persistencia de Entidades y Autenticación con Cuentas Google.</p>
             
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="images/madrid3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
            		<%
					    if (user != null) {
					        pageContext.setAttribute("user", user);
					%>
							 <p><a class="btn btn-lg btn-success" href="#" role="button">Tutoriales</a></p>
					<%
						} else {
							%>
							<p></p>
					<%
						}
					%>            
           
              <h1>Trabajo fin de Asignatura</h1>
               <h2>Aplicación Google Cloud</h2>
              <p>Arquetipo GAE en Maven, Java Server Pages, Bootstrap, Persistencia de Entidades y Autenticación con Cuentas Google.</p>
              
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

					<%
					    if (user != null) {
					        pageContext.setAttribute("user", user);
					%>
					    <!-- Marketing messaging and featurettes
					    ================================================== -->
					    <!-- Wrap the rest of the page in another container to center all the content. -->
					
					    <div class="container marketing">
					
					      <!-- Three columns of text below the carousel -->
					      <div class="row">
					        <div class="col-lg-4">
					          <img class="img-circle size padding" src="images/empresa.jpg" alt="Generic placeholder image" width="140" height="140">
					          <h2>Empresa</h2>
					          <p>Una empresa es una organización o institución dedicada a actividades o persecución de fines económicos.</p>
					          <p><a class="btn btn-danger" href="alta_empresas.jsp" role="button">Altas Empresas &raquo;</a></p>
					        </div><!-- /.col-lg-4 -->
					        <div class="col-lg-4">
					          <img class="img-circle size padding" src="images/cliente.jpg" alt="Generic placeholder image" width="140" height="140" >
					          <h2>Cliente</h2>
					          <p>En la antigua Roma, a un cliente, alguien que dependía de un benefactor en forma legal alcanzar la ciudadanía.</p>
					          <p><a class="btn btn-primary" href="alta_clientes.jsp" role="button">Altas Clientes &raquo;</a></p>
					        </div><!-- /.col-lg-4 -->
					        <div class="col-lg-4">
					          <img class="img-circle size padding" src="images/empleado.jpg" alt="Generic placeholder image" width="140" height="140">
					          <h2>Empleado</h2>
					          <p>Trabajador o trabajadora es la persona física que con la edad legal mínima presta sus servicios retribuidos convenientemente.</p>
					          <p><a class="btn btn-success" href="alta_empleados.jsp" role="button">Altas Empleados &raquo;</a></p>
					        </div><!-- /.col-lg-4 -->
					
					      </div><!-- /.row -->			  					        
					<%
						}
					%>
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Subir al principio</a></p>
        <p>&copy; Master en Desarrollo de Aplicaciones y Servicios para Dispositivos Móviles 2016-2017 &middot; <a href="#">Privacidad</a> &middot; <a href="#">Terminos de uso</a></p>
      </footer>

    </div><!-- /.container -->





  </body>
</html>
