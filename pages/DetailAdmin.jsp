<%-- 
    Document   : DetailAdmin
    Created on : Oct 1, 2018, 1:14:10 AM
    Author     : PATHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Detail</title>
                     <link rel="stylesheet" href="../css/admin.css" type="text/css"/>

        <script>
       function Navigate(){   
         window.location.replace('./LogOut.jsp');
        return false;
    }
      function Navigate1(){   
         window.location.replace('./UpdateAdmin.jsp');
        return false;
    }
      function Navigate2(){   
         window.location.replace('./AddAdmin.jsp');
        return false;
    }
     function Navigate3(){   
         window.location.replace('./SearchDetail.jsp');
        return false;
    }  
         function Navigate4(){   
         window.location.replace('./Register.jsp');
        return false;
    }  
    </script>
    </head>
    <body>
           <% session.setAttribute("lo","00"); %>
       
        <p style="color: aqua;font-size: 55px;text-align: center;"><b> Admin Details </b></p>
        
                    <div id="rcorners1" style="font-size: 40px;width: 40%">
                      
                                 <br><p style="margin-left:50px;"><b style="color: darkblue">Admin Id:</b><b style="color:white;"><%out.print(session.getAttribute("admin_id"));%></b></p>
                                  <p style="margin-top: 50px;margin-left:50px"><b style="color: darkblue">Password:</b><b style="color:white;"><%out.print(session.getAttribute("password"));%></b></p>
            </div>
            <div>
                  <button type="button" class="registerbtn" onclick="Navigate()" style="float: right;margin-right:190px;margin-top: -325px;font-size:25px;padding: 16px 126px;">Log Out</button>
                  <button type="button" class="registerbtn" onclick="Navigate1()" style="float: right;margin-right:190px;margin-top: -245px;font-size:25px;padding: 16px 88px;">Update Details</button>
                  <button type="button" class="registerbtn" onclick="Navigate2()" style="float: right;margin-right:190px;margin-top: -165px;font-size:25px;padding: 16px 109px;">Add Admin</button>
                  <button type="button" class="registerbtn" onclick="Navigate4()" style="float: right;margin-right:190px;margin-top: -85px;font-size:25px;padding: 16px 90px;">Add Student</button>        
                  <button type="button" class="registerbtn" onclick="Navigate3()" style="float: right;margin-right:190px;margin-top: -5px;font-size:25px;padding: 16px 86px;">Students Detail</button>
                    
            </div>
            
    </body>
</html>
