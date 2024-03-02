<%-- 
    Document   : ValidationStudent
    Created on : Sep 29, 2018, 7:39:45 PM
    Author     : PATHIK
--%>
<%@include file="./Connect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation</title>
  
    </head>
    <body>
        <%
            ps=conn.prepareStatement("select * from student where enrollment_no=?");
            ps.setString(1, request.getParameter("uname"));   
            rs=ps.executeQuery();
            if(!rs.next())
            {   
        %><script type="text/javascript">document.getElementById("warning").style.opacity=1; </script><%
                RequestDispatcher rd=request.getRequestDispatcher("./LoginStudent.jsp");
                rd.include(request, response);
            }

            else{
                    if((rs.getString("password")).equals((request.getParameter("pass")).toString())){
                                session=request.getSession();
                                session.setAttribute("enrollment_no",request.getParameter("uname"));
                                session.setAttribute("password",request.getParameter("pass"));
                                response.sendRedirect("./DetailStudent.jsp");
                    }else{
                    %><script type="text/javascript">document.getElementById("warning").style.opacity=1; </script><%
                RequestDispatcher rd=request.getRequestDispatcher("./LoginStudent.jsp");
                rd.include(request, response);
        
                }
       
                }
        %>

    </body>
</html>
