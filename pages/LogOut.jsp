<%-- 
    Document   : LogOut
    Created on : Sep 30, 2018, 2:33:35 PM
    Author     : PATHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Expires" content="-1"> 
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"> 
<title>Logout</title> 
                <script type="text/javascript">
    function Navigate(){   
         window.location.replace('./LoginStudent.jsp');
        return false;
    }
    function Navigate1(){   
         window.location.replace('./LoginAdmin.jsp');
        return false;
    }
    
    </script>
</head> 
<body> 

<% 
    if(session.getAttribute("lo").toString()=="0")
    {
    session.invalidate();
    %><script> Navigate(); </script><%
    }
    else{
session.invalidate();
    %><script> Navigate1(); </script><%
        }
%>
<script>Navigate();</script>
</body> 
</html