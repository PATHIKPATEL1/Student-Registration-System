<%-- 
    Document   : RegistrationAdmin
    Created on : Oct 1, 2018, 10:34:04 PM
    Author     : PATHIK
--%>
<%@include file="./Connect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Admin</title>
            <link rel="stylesheet" href="../css/successfuly.css" type="text/css"/>
        <script type="text/javascript">
    
     function Navigate(){   
         window.location.replace("./DetailAdmin.jsp");
        return false;
    }
    function Navigate1(){   
         window.location.replace("./LogOut.jsp");
        return false;
    }
   </script>
    </head>
    <body>
        
        <%
            session=request.getSession();

        if(session.getAttribute("flag").toString()=="1")
            {
        
            ps=conn.prepareStatement("update admin set password=? where admin_id=?");
            ps.setString(1,(session.getAttribute("password").toString()));
            ps.setString(2,(session.getAttribute("admin_id").toString()));
            ps.executeUpdate();
            %>
              <p style="color: green;font-size: 80px;text-align: center;vertical-align: middle;margin-top: 40px;"><b>Successful</b></p>
   <div id="rcorners1">
                       <button type="button" class="back" onclick="Navigate1()" style="position: relative;float: right;margin-right: 20px;margin-top: 0px;">Log Out</button>
                       <button type="button" class="back" onclick="Navigate()" style="position: relative;float: right;margin-top: 0px;">Back</button>
                       

       <%
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Admin Id:</b><b style='color:darkblue;'>"+(session.getAttribute("admin_id")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Password:</b><b style='color:darkblue;'>"+(session.getAttribute("password")).toString()+"</b></p></body></html>");

       %>
       </div>
       <%
        }
        
        
        else
        {   
            ps=conn.prepareStatement("insert into admin(admin_id,password) values(?,?)");
            ps.setString(1,(session.getAttribute("admin_id1").toString()));;
            ps.setString(2,(session.getAttribute("password1").toString()));
            ps.executeUpdate();
            
            %>
              <p style="color: green;font-size: 80px;text-align: center;vertical-align: middle;margin-top: 40px;"><b>Successful</b></p>
   <div id="rcorners1">
                       <button type="button" class="back" onclick="Navigate()" style="position: relative;float: right;margin-right: 20px;margin-top: 0px;">Back</button>

       <%
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Admin Id:</b><b style='color:darkblue;'>"+(session.getAttribute("admin_id1")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Password:</b><b style='color:darkblue;'>"+(session.getAttribute("password1")).toString()+"</b></p></body></html>");

       %>
       </div>
       <%
        }

        %>
        
    </body>
</html>
