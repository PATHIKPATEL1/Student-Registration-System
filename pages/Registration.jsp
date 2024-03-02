<%-- 
    Document   : Registration
    Created on : Sep 29, 2018, 12:31:04 AM
    Author     : PATHIK
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <script>
        function Navigate(){   
         window.location.replace('./Successfuly.jsp');
        return false;
    }
</script>
  </head>
    <body>
        
            <%
        
       session=request.getSession();
       session.setAttribute("first_name",request.getParameter("first_name"));
       session.setAttribute("middle_name",request.getParameter("middle_name"));
       session.setAttribute("last_name",request.getParameter("last_name"));
       session.setAttribute("gender",request.getParameter("gender"));
       session.setAttribute("date_of_birth",request.getParameter("date_of_birth").toString());
       session.setAttribute("email_id",request.getParameter("email_id"));
       session.setAttribute("mobile_no",request.getParameter("mobile_no"));
       session.setAttribute("address",request.getParameter("address"));
       session.setAttribute("state",request.getParameter("state"));
       session.setAttribute("enrollment_no",request.getParameter("enrollment_no"));
       session.setAttribute("branch",request.getParameter("branch"));
       session.setAttribute("semester",request.getParameter("semester"));
       session.setAttribute("institute",request.getParameter("institute"));
       session.setAttribute("password",request.getParameter("password"));


    %>
         
        <script>Navigate();</script>

    </body>
</html>
