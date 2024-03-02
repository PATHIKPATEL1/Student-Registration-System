<%-- 
    Document   : RegistrationAdmin
    Created on : Oct 1, 2018, 11:27:32 PM
    Author     : PATHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
      <script>
        function Navigate(){   
         window.location.replace('./RegisterAdmin.jsp');
        return false;
    }
</script>
  </head>
    <body>
        
            <%
        if(session.getAttribute("flag").toString()=="1")
            {
        
       session=request.getSession();
       session.setAttribute("password",request.getParameter("pass"));
            }
        else{
        
       session.setAttribute("admin_id1",request.getParameter("uname"));
       session.setAttribute("password1",request.getParameter("pass"));
        }
    %>
         
        <script>Navigate();</script>

    </body>
</html>
