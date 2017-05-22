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
                    Alta Empresa <small>informe de los datos de su empresa</small></h1>
            </div>
        </div>
    </div>
</div>
<br/>
<div class="container">
	<div class="col-md-12">

			<%
				if ( request.getParameter("p_empresa") != null ){
				    String guardado = "<div class='col-md-2'> <a href='index.jsp'>" +
				    "<button type='submit' class='btn btn-danger'>"+ 
				    "   <span class='glyphicon glyphicon-arrow-left'></span>&nbspRegresar</button></a></div>";					
				    guardado += "<div class='col-md-10 alert alert-success' role='alert'>Empresa <strong>" + request.getParameter("p_empresa") + "</strong> guardada correctamente...</div>";

				    pageContext.setAttribute("guardado", guardado);
				}

			 %>
			${guardado}	
	</div>	
	<div class="col-md-12">
	    <div class="form-area">  
	        <form role="form" action="/AltaEmpresa" method="post">
	 			<div class="form-group">
	                <label>Nombre</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-home"></span></span>
	                    <input class='form-control' id="p_empresa" type="text" name="p_empresa" placeholder="Nombre de la empresa"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Dirección</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                     <input class='form-control' id="p_direccion" type="text" name="p_direccion"placeholder="Dirección de la empresa"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Código Postal</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                    <input class='form-control' id="p_cp" type="text" name="p_cp" placeholder="Código Postal de la empresa"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Población</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                   <input class='form-control' id="p_poblacion" type="text" name="p_poblacion" placeholder="Población de la empresa"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Provincia</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                   <input class='form-control' id="p_provincia" type="text" name="p_provincia" placeholder="Provincia de la empresa"  required/>
	                </div>
	            </div>
	            <div class="form-group">
	                <label>Actividad</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
	                   <input class='form-control' id="p_actividad" type="text" name="p_poblacion" placeholder="Actividad de la empresa"  required/>
	                </div>
	            </div>	        
 	            <div class="form-group">
	                <label>email</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
	                   <input class='form-control' id="p_email" type="text" name="p_email" placeholder="email de la empresa"  required/>
	                </div>
	            </div>	     
 	            <div class="form-group">
	                <label>Teléfono</label>
	                <div class="input-group"> <span class="input-group-addon"><span class="glyphicon glyphicon-phone-alt"></span></span>
	                   <input class='form-control' id="p_telefono" type="text" name="p_telefono" placeholder="Teléfono de la empresa"  required/>
	                </div>
	            </div>	       	                               
	            <button type="submit" class="btn btn-danger">
	    			<span class="glyphicon glyphicon-plus"></span> Alta Empresa
				</button>
	        </form>
	    </div>



	</div>
</div>




</body>
</html>
