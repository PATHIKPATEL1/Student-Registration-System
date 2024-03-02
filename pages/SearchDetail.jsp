<%-- 
    Document   : SearchDetail
    Created on : Oct 1, 2018, 7:21:25 PM
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
        <title>Search Detail</title>
                <link rel="stylesheet" href="../css/admin.css" type="text/css"/>

        <script>
            function serordel()
            {
                if((document.getElementById("s1").value)==="search")
                {
                    document.getElementById("s2").innerHTML='<p></p>';
                }else{
                                        document.getElementById("s2").innerHTML="jjjjjjjjjjjjjjjjjjjjjjjjjj";

                }
            }
            
            function sel()
            {
                if(document.getElementById("s3").value==="FirstName")
                {
                    
                }
            }
            </script>
    </head>
    <body>
        <div style="margin-left: 20px;">
            <select name="serordel" onchange="serordel()" style="padding: 8px;font-size: 18px;background: #f1f1f1;margin-top: 300px;margin-left: 20px;" autocomplete="off" id="s1">
                    <option value="none" >---------</option>
                    <option value="search" >Search</option>
                    <option value="delete">Delete</option></select>
            <select name="sel" onchange="sel()" style="padding: 8px;font-size: 18px;background: #f1f1f1;margin-top: 300px;margin-left: 20px;" autocomplete="off" id="s2">
        <option value="none" >---------</option>
        <option value="All" >All</option>
<option value="FirstName" >FirstName</option>
<option value="LastName" >LastName</option>
<option value="MiddleName" >MiddleName</option>
<option value="FirstName" >Gender</option>
<option value="Date_Of_Birth" >Date Of Birth</option>
<option value="Email_Id" >Email Id</option>
<option value="Mobile_No" >Mobile No</option>
<option value="Address" >Address</option>
<option value="State" >State</option>
<option value="Enrollment_No" >Enrollment No</option>
<option value="Branch" >Branch</option>
<option value="Semester" >Semester</option>
<option value="Institute" >Institute</option>
<option value="Password:">Password</option></select>
            <p><input type="text" name="tb" id="s3" value="patel"></p>
 </div>
            <%

                session=request.getSession();
                ps=conn.prepareStatement("select * from student where first_name=?");
                ps.setString(1,"<script>document.getElemenntById('s3').value;</script>");
                rs=ps.executeQuery();
                rs.next();
            
            %>
        </div>
    </body>
</html>
