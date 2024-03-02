<%-- 
    Document   : Details
    Created on : Sep 30, 2018, 1:05:20 AM
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
        <title>Details</title>
                    <link rel="stylesheet" href="../css/register.css" type="text/css"/>
                    
                    <script type="text/javascript">
    function Navigate(){   
         window.location.replace('./LogOut.jsp');
        return false;
    }
    
    function Navigate1(){   
         window.location.replace('./UpdateDetail.jsp');
        return false;
    }
    
   </script>
    </head>
    <body style="background-image:url('../image/backsuccess.jpg');">
                        <p style="margin-top: 70px;font-size: 50px;text-align: center"><b style="margin-left: 40px;color:white;">Details</b><img src="../image/logo.png" style="float: right;margin-top: -100px;margin-bottom: 0px; width: 500px;height: 200px"></p>

        <div style="font-size: 25px;">
            <button type="button" class="registerbtn" onclick="Navigate()" style="float: right;">Log Out</button>
            <button type="button" class="registerbtn" onclick="Navigate1()" style="float: right;">Update</button>
            
        <%
            session=request.getSession();
            session.setAttribute("lo","01");
            ps=conn.prepareStatement("select * from student where enrollment_no=? and password=?");
            ps.setString(1,(session.getAttribute("enrollment_no").toString()));
            ps.setString(2,(session.getAttribute("password").toString()));
            rs=ps.executeQuery();
            rs.next();
            
            
       session.setAttribute("first_name",rs.getString("first_name"));
       session.setAttribute("middle_name",rs.getString("middle_name"));
       session.setAttribute("last_name",rs.getString("last_name"));
       session.setAttribute("gender",rs.getString("gender"));
       session.setAttribute("date_of_birth",rs.getString("date_of_birth"));
       session.setAttribute("email_id",rs.getString("email_id"));
       session.setAttribute("mobile_no",rs.getString("mobile_no"));
       session.setAttribute("address",rs.getString("address"));
       session.setAttribute("state",rs.getString("state"));
       session.setAttribute("enrollment_no",rs.getString("enrollment_no"));
       session.setAttribute("branch",rs.getString("branch"));
       session.setAttribute("semester",rs.getString("semester"));
       session.setAttribute("institute",rs.getString("institute"));
       session.setAttribute("password",rs.getString("password"));
       rs.close();


        %> <div style="font-size: 30px;margin-left: 350px">
            <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">First Name:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("first_name").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Middle Name:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("middle_name").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Last Name:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("last_name").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Gender:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("gender").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Date Of Birth:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("date_of_birth").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Email Id:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("email_id").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Mobile No:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("mobile_no").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Address:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("address").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">State:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("state").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Enrollment No:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("enrollment_no").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Branch:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("branch").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Semester:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("semester").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Institute:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("institute").toString()); %></b></p>
           <p style="margin-left: 10px;margin-top: 5px;"><b style="color: white;">Password:</b><b style="color: darkgreen;"><%out.println(session.getAttribute("password").toString()); %></b></p>
        </div>
        </div>
    </body>
</html>
