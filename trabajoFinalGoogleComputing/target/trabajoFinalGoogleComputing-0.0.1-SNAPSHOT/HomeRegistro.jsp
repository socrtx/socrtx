<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
    <head> 
    <title> MyAuthentication </title>
    <link type="text/css" rel="stylesheet" href="/stylesheets/mainStyle.css"/>
</head>
<body> 
<form action="/HomeRegistro.jsp" method="post">
   <div id="contenedor">
		<h1>Register</h1>
		<div id="banner">
			<img src="/images/etsisi.png">
		</div>
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
        pageContext.setAttribute("user", user);
%>
       <div class='comentario'> <p> Dear ${fn:escapeXml(user.nickname)}, You can
        <a href="<%= userService.createLogoutURL(request.getRequestURI()) %>"> Sign out </a></p> </div>
<%
} else {
%>
       <div class='comentario'> 
       <p> <a href="<%= userService.createLoginURL(request.getRequestURI()) %>"> Sign in </a></p></div>
<%
    }
%>	
     </div>
</form>
</body>
</html>