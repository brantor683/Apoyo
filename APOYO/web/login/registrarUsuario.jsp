<%-- 
    Document   : registrarUsuario
    Created on : 27/09/2015, 11:38:37 AM
    Author     : Brandon
--%>

<%@page import="Datos.EstudianteDAO"%>
<%@page import="Util.RHException"%>
<%@page import="Datos.UsuarioDAO"%>
<%@page import="Negocio.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

<%if (request.getParameter("user") != null && request.getParameter("passwd") != null) {
        session.setAttribute("USUARIO", request.getParameter("user"));
        session.setAttribute("CONT", request.getParameter("passwd"));
}
         Usuario user = new Usuario();
         Usuario user2 = new Usuario();
    user.setUser((String) session.getAttribute("USUARIO"));
    user.setPasswd((String) session.getAttribute("CONT"));
    EstudianteDAO e = new EstudianteDAO();
    UsuarioDAO u = new UsuarioDAO();
    
        
        user2.setUser("apoyoud");
        user2.setPasswd("APOYOUD");
       
      String aux =(user.getUser());
       out.print("<td>" + aux + "</td>");
        if(e.buscarEstudiante(aux, user2)!= null){
                
        out.println("<td>" + "holaa"+ u.crearUsuarioEstudiante(user2, user ) + "</td>");
         out.print("<td>" + "SI SE ENTRO if" + "</td>");
        } else {
             out.println( "nada");}
        out.println("</tr>");%>
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>


    