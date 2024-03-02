<%-- 
    Document   : Register
    Created on : Sep 26, 2018, 3:21:57 PM
    Author     : PATHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        
        <link rel="stylesheet" href="../css/register.css" type="text/css"/>

    </head>
    <body>
        <form action="Registration.jsp" method="post">
            <%        session.setAttribute("flag","0"); %>
            <p style="margin-top: 70px;font-size: 50px;text-align: center"><b style="margin-left: 40px;color: lightgrey;">Registration Form</b><img src="../image/logo.png" style="float: right;margin-top: -100px;margin-bottom: 0px; width: 500px;height: 200px"></p>

            <div class="container">
                <table id="t1">
                    
                    <tr>
                        <td class="d1"><p><b>First Name:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter First Name" name="first_name" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Middle Name:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Middle Name" name="middle_name" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Last Name:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Last Name" name="last_name" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Date Of Birth:</b></p></td>
                        <td class="d2"><p><input type="date"  name="date_of_birth" required style="padding: 4px;font-size: 18px;background: #f1f1f1;" autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Gender:</b></p></td>
                        <td class="d2"><p style="padding: 4px;font-size: 18px;margin-top: 28px;color: lightgray;"><input type="radio" name="gender" value="male" checked autocomplete="off"> <b> Male </b>
                                <input type="radio" name="gender" value="female"><b> Female </b>
                                <input type="radio" name="gender" value="other"><b> Other </b></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Email Id:</b></p></td>
                        <td class="d2"><p><input type="email" placeholder="xyz@gmail.com" name="email_id" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Mobile No:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Mobile Number" name="mobile_no" onkeypress="return event.charCode >=48 && event.charCode <=57" required maxlength="10" minlength="10" autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Address:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Address" name="address" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>State:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter State Name" name="state" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Enrollment No:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Enrollment No." name="enrollment_no" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Branch:</b></p></td>
                        <td class="d2"><p><select name="branch" style="padding: 8px;font-size: 18px;background: #f1f1f1;margin-top: 6px;" autocomplete="off">
                                    <option value="Computer Engineering">Computer Engineering</option>
                                    <option value="Information Technology">Information Technology</option>
                                    <option value="Electrical Engineering">Electrical Engineering</option>
                                    <option value="Electronics & Communication Engineering">Electronics & Communication Engineering</option>
                                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                                    <option value="Civil Engineering">Civil Engineering</option></select></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Semester:</b></p></td>
                        <td class="d2"><p><select name="semester" style="padding: 8px;font-size: 18px;background: #f1f1f1;margin-top: 6px;" autocomplete="off">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option></select></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Institute:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Institute Name" name="institute" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Password:</b></p></td>
                        <td class="d2"><p><input type="password" placeholder="Enter Password" name="password" required></p></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p style="color: orange;font-size:20px;">*Your Enrollment Number is Consider as a Username.*</p></td>
                    </tr>
                    <tr>
                        <td class="d1" style="margin-top: 32px;"><input type="button" value="Back" class="registerbtn" onclick="window.location='./Home.jsp';" style="float: left;"></td>
                        <td class="d2" style="margin-top: 32px;"><button type="submit" class="registerbtn" style="margin-left:260px;float: left;">Register</button><button type="reset" class="registerbtn"
                                                                                                                                                               style="margin-right:550px;">Reset</button></td>
                </tr>
                </table>
            </div>
           
</form>
    </body>
</html>
