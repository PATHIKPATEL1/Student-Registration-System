<%-- 
    Document   : Login
    Created on : Sep 26, 2018, 11:04:50 AM
    Author     : PATHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LoginAdmin</title>

<link rel="stylesheet" href="../css/login.css" type="text/css"/>
                <script type="text/javascript">
    function Navigate(){   
         window.location.replace('./LoginStudent.jsp');
        return false;
    }
    </script>

</head>
<body>
    
    
        <div id="rcorners1" style="text-align:center">
        
            <div id="rcorners2"><img src="../image/logo.png" style="margin: -10px 0px; width: 400px;height: 170px"></div>
            <div style="margin-top: 5px;margin-bottom: 0px;"><img src="../image/adminlogin.png" style="height: 120px;width: 130px;">
                <p style="text-align: center;margin-top: 0px;margin-bottom: 0px;"><b>Admin</b></p>
            </div>
                        <div><p id="warning" style="color:red;opacity: 0;">Invalid username or password.</p></div>

            <div id="log">
                <form action="ValidationAdmin.jsp" method="post">

  <div class="container">
      <p style="text-align: left;margin: 0px;"><b>Username</b></p>
    <input type="text" placeholder="Enter Username" name="uname" required autocomplete="off">

    <p style="text-align: left;margin: 0px;"><b>Password</b></p>
    <input type="password" placeholder="Enter Password" name="pass" required>
        
    <button type="submit" style="margin-top: 30px;">Login</button>
    
  </div>
</form>

    <div class="container" style="margin-top:2px;">
      <button type="button" class="back" onclick="window.location='./Home.jsp';" style="float: left;">Back</button>
      <a onclick="Navigate()"><img src="../image/student.png" title="Student" class="im" style="height: 35px;width: 44px;margin-left:250px;margin-top: 13px"></a>

  </div>
</div>
        </div>
    

</body>
</html>
