<%-- 
    Document   : UpdateDetail
    Created on : Sep 30, 2018, 5:02:15 PM
    Author     : PATHIK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             <link rel="stylesheet" href="../css/register.css" type="text/css"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update detail</title>
        <style>
            .d1{
    vertical-align: middle;
    text-align: right;
    width: 20%;
    height: auto;
    float: left;
    font-size:25px;
    color: darkblue;
    }
        </style>
<script>
        function Navigate(){ 
           window.location.replace('./LogOut.jsp');
        return false;
    }
    function Navigate1(){   
         window.location.replace('./DetailStudent.jsp');
        return false;
    }
    function notify()
            {
                document.getElementById("p1").innerHTML = "*You can't change Enrollment No.*";
            }
            function notify1()
            {
                document.getElementById("p1").innerHTML = "";
            }
    </script>
    </head>
    <body style="background-image:url('../image/backsuccess.jpg');">

        <div style="font-size: 25px;">
                        <p style="margin-top: 70px;font-size: 50px;text-align: center"><b style="margin-left: 40px;color:darkblue;">Updation Form</b><img src="../image/logo.png" style="float: right;margin-top: -100px;margin-bottom: 0px; width: 500px;height: 200px"></p>

            <div>
            <button type="button" class="registerbtn" onclick="Navigate()" style="float: right;">Log Out</button>
            <button type="button" class="registerbtn" onclick="Navigate1()" style="float: right;">Back</button>
            </div>
<form action="Registration.jsp" method="post">
                <%        session.setAttribute("flag","1"); %>
            <div class="container">
                <table id="t1">
                    
                    <tr>
                        <td class="d1"><p><b>First Name:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter First Name" value="<% out.print(session.getAttribute("first_name").toString()); %>" name="first_name" required autocomplete="off"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Middle Name:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Middle Name" name="middle_name" required autocomplete="off" value="<% out.print(session.getAttribute("middle_name").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Last Name:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Last Name" name="last_name" required autocomplete="off" value="<% out.print(session.getAttribute("last_name").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Date Of Birth:</b></p></td>
                        <td class="d2"><p><input type="date"  name="date_of_birth" required style="padding: 4px;font-size: 18px;background: #f1f1f1;" autocomplete="off" value="<% out.print(session.getAttribute("date_of_birth").toString());%>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Gender:</b></p></td>
                        <td class="d2"><p style="padding: 4px;font-size: 18px;margin-top: 28px;"><input type="radio" name="gender" value="male" autocomplete="off" <% if((session.getAttribute("gender").toString()).equals("male")){%>checked<%} %> > Male
                                <input type="radio" name="gender" value="female" <% if((session.getAttribute("gender").toString()).equals("female")){%>checked<%} %>> Female
                                <input type="radio" name="gender" value="other" <% if((session.getAttribute("gender").toString()).equals("other")){%>checked<%} %>> Other </p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Email Id:</b></p></td>
                        <td class="d2"><p><input type="email" placeholder="xyz@gmail.com" name="email_id" required autocomplete="off" value="<% out.print(session.getAttribute("email_id").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Mobile No:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Mobile Number" name="mobile_no" required maxlength="10" minlength="10" autocomplete="off" value="<% out.print(session.getAttribute("mobile_no").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Address:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Address" name="address" required autocomplete="off" value="<% out.print(session.getAttribute("address").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>State:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter State Name" name="state" required autocomplete="off" value="<% out.print(session.getAttribute("state").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Enrollment No:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Enrollment No." name="enrollment_no" required autocomplete="off" value="<% out.print(session.getAttribute("enrollment_no").toString()); %>" readonly="readonly" onmouseover="notify()" onmouseout="notify1()"><p id="p1" style="color: red;font-size: 20px;margin-bottom:0px;margin-top: 0px;"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Branch:</b></p></td>
                        <td class="d2"><p><select name="branch" style="padding: 8px;font-size: 18px;background: #f1f1f1;margin-top: 6px;" autocomplete="off" value="<% out.print(session.getAttribute("branch").toString()); %>">
                                    <option value="Computer Engineering" <% if((session.getAttribute("branch").toString()).equals("Computer Engineering")){%>selected<%} %>>Computer Engineering</option>
                                    <option value="Information Technology" <% if((session.getAttribute("branch").toString()).equals("Information Technology")){%>selected<%} %>>Information Technology</option>
                                    <option value="Electrical Engineering" <% if((session.getAttribute("branch").toString()).equals("Electrical Engineering")){%>selected<%} %>>Electrical Engineering</option>
                                    <option value="Electronics & Communication Engineering" <% if((session.getAttribute("branch").toString()).equals("Electronics & Communication Engineering")){%>selected<%} %>>Electronics & Communication Engineering</option>
                                    <option value="Mechanical Engineering" <% if((session.getAttribute("branch").toString()).equals("Mechanical Engineering")){%>selected<%} %>>Mechanical Engineering</option>
                                    <option value="Civil Engineering" <% if((session.getAttribute("branch").toString()).equals("Civil Engineering")){%>selected<%} %>>Civil Engineering</option></select></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Semester:</b></p></td>
                        <td class="d2"><p><select name="semester" style="padding: 8px;font-size: 18px;background: #f1f1f1;margin-top: 6px;" autocomplete="off">
                                    <option value="1" <% if((session.getAttribute("semester").toString()).equals("1")){%>selected<%} %>>1</option>
                                    <option value="2" <% if((session.getAttribute("semester").toString()).equals("2")){%>selected<%} %>>2</option>
                                    <option value="3" <% if((session.getAttribute("semester").toString()).equals("3")){%>selected<%} %>>3</option>
                                    <option value="4" <% if((session.getAttribute("semester").toString()).equals("4")){%>selected<%} %>>4</option>
                                    <option value="5" <% if((session.getAttribute("semester").toString()).equals("5")){%>selected<%} %>>5</option>
                                    <option value="6" <% if((session.getAttribute("semester").toString()).equals("6")){%>selected<%} %>>6</option>
                                    <option value="7" <% if((session.getAttribute("semester").toString()).equals("7")){%>selected<%} %>>7</option>
                                    <option value="8" <% if((session.getAttribute("semester").toString()).equals("8")){%>selected<%} %>>8</option></select></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Institute:</b></p></td>
                        <td class="d2"><p><input type="text" placeholder="Enter Institute Name" name="institute" required autocomplete="off" value="<% out.print(session.getAttribute("institute").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td class="d1"><p><b>Password:</b></p></td>
                        <td class="d2"><p><input type="password" placeholder="Enter Password" name="password" required value="<% out.print(session.getAttribute("password").toString()); %>"></p></td>
                    </tr>
                    <tr>
                        <td colspan="2"><p style="color: red;font-size:20px;">*Your Enrollment Number is Consider as a Username.*</p></td>
                    </tr>
                    <tr>
                        <td class="d2" style="margin-top: 32px;"><button type="submit" class="registerbtn" style="margin-left:260px;float: left;">Update</button><button type="reset" class="registerbtn"
                                                                                                                                                               style="margin-right:550px;">Reset</button></td>
                </tr>
                </table>
            </div>
           
</form>
        </div>
    </body>
</html>
