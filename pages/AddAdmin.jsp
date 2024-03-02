<%-- 
    Document   : AddAdmin
    Created on : Oct 1, 2018, 1:34:21 AM
    Author     : PATHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Admin</title>
        <link rel="stylesheet" href="../css/admin.css" type="text/css"/>

    </head>
    <body>
                <form action="RegistrationAdmin.jsp" method="post">
            <%        session.setAttribute("flag","0");
                        session.setAttribute("lo","01");
            %>

        <div class="container">
            <div id="rcorners1">
                    
                <table id="t1">
            
                    <tr>
                        <td class="d1"><p><b>Admin Id:</b></p></td>
                        <td class="d2"><p><input type="text" id="tx1" placeholder="Enter Admin Id" name="uname" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Password:</b></p></td>
                        <td class="d2"><p><input type="text" id="tx2" placeholder="Enter Password" name="pass" required autocomplete="off"></p></td>
                    </tr>  
                    <tr>
                        <td class="d1" style="margin-top: 32px;"><input type="button" value="Back" class="registerbtn" onclick="window.location='./DetailAdmin.jsp';" style="float: left;"></td>
                        <td class="d2" style="margin-top: 32px;"><button type="submit" class="registerbtn" style="margin-left:180px;margin-top: -90px;float: left;">Register</button><button type="reset" class="registerbtn"
                                                                                                                                                               style="margin-top: -90px;margin-right:530px;">Reset</button></td>
                </tr>
                </table>
            </div>
</div>
                </form>
</body>
</html>
