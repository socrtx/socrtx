<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
   <link rel="stylesheet" type="text/css" href="/stylesheets/styles.css" />
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
              <a class="navbar-brand" href="#">Trabajo Final Google Cloud</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
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
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

<div class="container">
    <div class="col-md-12 alert-info">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Alta Cliente <small>informe de los datos del cliente</small></h1>
            </div>
        </div>
    </div>
</div>


<br/>


<div class="container">
	<div class="col-md-12">

			<%
				if ( request.getParameter("p_nifcif") != null ){
				    String guardado = "<div class='col-md-2'> <a href='index.jsp'>" +
				    "<button type='submit' class='btn btn-info'>"+ 
				    "   <span class='glyphicon glyphicon-arrow-left'></span>&nbspRegresar</button></a></div>";					
				    guardado += "<div class='col-md-10 alert alert-success' role='alert'>Cliente <strong>" + request.getParameter("p_nifcif") + "</strong> guardado correctamente...</div>";

				    pageContext.setAttribute("guardado", guardado);
				}

			 %>
			${guardado}	
	</div>	
	<div class="col-md-12">
	    <div class="form-area">  
	        <form role="form" action="/AltaCliente" method="post">
	 			<div class="form-group">
	                <label>DNI/NIF</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
	                    <input class='form-control' id="p_nifcif" type="text" name="p_nifcif" placeholder="DNI/NIF del cliente"  required/>
	                </div>
	            </div>	        
	 			<div class="form-group">
	                <label>Nombre</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
	                    <input class='form-control' id="p_nombre" type="text" name="p_nombre" placeholder="Nombre del cliente"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Apellidos</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
	                     <input class='form-control' id="p_apellidos" type="text" name="p_apellidos"placeholder="Apellidos del cliente" required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Dirección</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                   <input class='form-control' id="p_direccion" type="text" name="p_direccion" placeholder="Dirección del cliente"  required/>
	                </div>
	            </div>	        
 	            <div class="form-group">
	                <label>email</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
	                   <input class='form-control' id="p_email" type="text" name="p_email" placeholder="email del cliente"  required/>
	                </div>
	            </div>	     
 	            <div class="form-group">
	                <label>Teléfono</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-phone-alt"></span></span>
	                   <input class='form-control' id="p_telefono" type="text" name="p_telefono" placeholder="Teléfono del cliente"  required/>
	                </div>
	            </div>	       	     
	            <div class="form-group">
	                <label>Notas</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-resize-vertical"></span></span>
	                    <textarea class='form-control' id="p_notas" name="p_notas" rows="10" cols="40" placeholder="Notas y comentarios sobre el cliente."></textarea>
	                </div>
	            </div>                              
	            <button type="submit" class="btn btn-info">
	    			<span class="glyphicon glyphicon-plus"></span> Alta Cliente
	    		</button>
				
	        </form>
	    </div>



	</div>
</div>




</body>
</html>
