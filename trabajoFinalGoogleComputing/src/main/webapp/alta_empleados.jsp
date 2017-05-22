<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
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
<body>
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
					        <a class="btn btn-danger btn-block " href="/"> Cerrar Sesión </a> 
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


<br/>
<div class="container">
<br/>
<br/>
<br/>
    <div class="col-md-12 alert-success">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Alta Empleado <small>informe de los datos del empleado</small></h1>
            </div>
        </div>
    </div>
<div class="col-md-12"><hr></div>
	<div class="col-md-12">

			<%
				if ( request.getParameter("p_nombre") != null ){
				    String guardado = "<div class='col-md-2'> <a href='index.jsp'>" +
				    "<button type='submit' class='btn btn-success'>"+ 
				    "   <span class='glyphicon glyphicon-arrow-left'></span>&nbspRegresar</button></a></div>";					
				    guardado += "<div class='col-md-10 alert alert-success' role='alert'>Empleado <strong>" + request.getParameter("p_nombre") + "</strong> guardado correctamente...</div>";

				    pageContext.setAttribute("guardado", guardado);
				}

			 %>
			${guardado}	
	</div>	
	
	<div class="col-md-12">
	    <div class="form-area">  
	        <form role="form" action="/AltaEmpleado" method="post">
	 			<div class="form-group">
	                <label>Nombre</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
	                    <input class='form-control' id="p_nombre" type="text" name="p_nombre" placeholder="Nombre del empleado"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Apellidos</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
	                     <input class='form-control' id="p_apellidos" type="text" name="p_apellidos"placeholder="Apellidos del empleado" required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Centro de trabajo</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-home"></span></span>
	                    <input class='form-control' id="p_centroTrabajo" type="text" name="p_centroTrabajo" placeholder="Centro de trabajo del empleado"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Horario laboral</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
	                   <input class='form-control' id="p_horario" type="text" name="p_horario" placeholder="Horario laboral del empleado"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>p_dias</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                   <input class='form-control' id="p_dias" type="text" name="p_dias" placeholder="Dias de la semana laborales"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Dirección</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                   <input class='form-control' id="p_direccion" type="text" name="p_direccion" placeholder="Dirección del empleado"  required/>
	                </div>
	            </div>	        
 	            <div class="form-group">
	                <label>email</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
	                   <input class='form-control' id="p_email" type="text" name="p_email" placeholder="email del empleado"  required/>
	                </div>
	            </div>	     
 	            <div class="form-group">
	                <label>Teléfono</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-phone-alt"></span></span>
	                   <input class='form-control' id="p_telefono" type="text" name="p_telefono" placeholder="Teléfono del empleado"  required/>
	                </div>
	            </div>	       	                               
	            <button type="submit" class="btn btn-success">
	    			<span class="glyphicon glyphicon-plus"></span> Alta Empleado
				</button>
	        </form>
	    </div>



	</div>
</div>




</body>
</html>
