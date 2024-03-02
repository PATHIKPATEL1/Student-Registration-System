<%-- 
    Document   : Connect
    Created on : Oct 6, 2018, 11:19:19 AM
    Author     : PATHIK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connection</title>
    </head>
    <body>
        <%
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/myapplication","root","");
            PreparedStatement ps;
            ResultSet rs;
        %>
    </body>
</html>
