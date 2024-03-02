<%-- 
    Document   : ValidationAdmin
    Created on : Sep 30, 2018, 1:35:19 AM
    Author     : PATHIK
--%>
<%@include file="./Connect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation</title>
    </head>
   <body>
        <%
            ps=conn.prepareStatement("select * from admin where admin_id=?");
            ps.setString(1, request.getParameter("uname"));   
            rs=ps.executeQuery();
            if(!rs.next())
            {   
        %><script type="text/javascript">document.getElementById("warning").style.opacity=1; </script><%
                RequestDispatcher rd=request.getRequestDispatcher("./LoginAdmin.jsp");
                rd.include(request, response);
            }

            else{
                    if((rs.getString("password")).equals((request.getParameter("pass")).toString())){
                                session=request.getSession();
                                session.setAttribute("admin_id",request.getParameter("uname"));
                                session.setAttribute("password",request.getParameter("pass"));
                                response.sendRedirect("./DetailAdmin.jsp");
                    }else{
                    %><script type="text/javascript">document.getElementById("warning").style.opacity=1; </script><%
                RequestDispatcher rd=request.getRequestDispatcher("./LoginAdmin.jsp");
                rd.include(request, response);
        
                }
       
                }
        %>

    </body>
</html>
