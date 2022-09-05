






<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
   
        <h3>usuario selecionado:</h3> <br><br>
        <p> nombre:<%=request.getParameter("Nombre")%> &nbsp Apellido:<%= request.getParameter("Apellido")%> </p>
        <br>
        <p> la fecha es de nacimiento es: <%=request.getParameter("Nacimiento")%></p>

        <p> La fecha actual es : <jsp:include page="fecha.jsp"></jsp:include><br></p>
       
        
       
       <%
            
            String Dateinicio     = request.getParameter("Nacimiento");
            SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
            Date fechaInicio      = date.parse(Dateinicio);
            
        // fecha de sistema.

           Date fechaactual = new Date(System.currentTimeMillis());
           SimpleDateFormat Date = new SimpleDateFormat("yyyy-MM-dd");

        //resta de fechas 

           int milisecondsByDay = 86400000;
           int dias = (int) ((fechaactual.getTime()-fechaInicio.getTime()) / milisecondsByDay);     

 
         %>
      
  </body>      
               
                
    
</html>
