<%-- 
    Document   : Successfuly
    Created on : Sep 29, 2018, 10:12:19 AM
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
        <title>Successfuly</title>
            <link rel="stylesheet" href="../css/successfuly.css" type="text/css"/>
        <script type="text/javascript">
    
     function Navigate(){   
         window.location.replace("./LoginStudent.jsp");
        return false;
    }
    function Navigate1(){   
         window.location.replace("./LogOut.jsp");
        return false;
    }
    function Navigate2(){   
         window.location.replace("./DetailStudent.jsp");
        return false;
    }
    function Navigate3(){   
         window.location.replace("./Register.jsp");
        return false;
    }    
    function Navigate4(){   
         window.location.replace("./DetailAdmin.jsp");
        return false;
    }
        </script>
    </head>
    <body>
        
        <%
            session=request.getSession();
            
               if(session.getAttribute("flag").toString()=="1")
            {
        
            ps=conn.prepareStatement("update student set first_name=?,middle_name=?,last_name=?,gender=?,date_of_birth=?,email_id=?,mobile_no=?,address=?,state=?,branch=?,semester=?,institute=?,password=? where enrollment_no=?");
            ps.setString(1,(session.getAttribute("first_name").toString()));
            ps.setString(2,(session.getAttribute("middle_name").toString()));
            ps.setString(3,(session.getAttribute("last_name").toString()));
            ps.setString(4,(session.getAttribute("gender").toString()));
            ps.setString(5,(session.getAttribute("date_of_birth").toString()));
            ps.setString(6,(session.getAttribute("email_id").toString()));
            ps.setString(7,(session.getAttribute("mobile_no").toString()));
            ps.setString(8,(session.getAttribute("address").toString()));
            ps.setString(9,(session.getAttribute("state").toString()));
            ps.setString(10,(session.getAttribute("branch").toString()));
            ps.setString(11,(session.getAttribute("semester").toString()));
            ps.setString(12,(session.getAttribute("institute").toString()));
            ps.setString(13,(session.getAttribute("password").toString()));
            ps.setString(14,(session.getAttribute("enrollment_no").toString()));

            ps.executeUpdate();
            %>
            <p style="color: green;font-size: 80px;text-align: center;vertical-align: middle;margin-top: 40px;"><b>Successful</b></p>
   <div id="rcorners1">
                       <button type="button" class="back" onclick="Navigate1()" style="margin-top: 10px;position: relative;float: right;">Log Out</button>
                       <button type="button" class="back" onclick="Navigate2()" style="margin-top: 10px;position: relative;float: right;">Back</button>
                       

       <%
                out.println("<html><body><p style='font-size:40px;margin:40px 0px 20px 40px;'><b style='color:darkcyan;'>FullName:</b><b style='color:darkblue;'>"+(session.getAttribute("first_name").toString())+" "+(session.getAttribute("middle_name").toString())+" "+(session.getAttribute("last_name").toString())+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Gender:</b><b style='color:darkblue;'>"+(session.getAttribute("gender")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Date Of Birth:</b><b style='color:darkblue;'>"+(session.getAttribute("date_of_birth")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Email Id:</b><b style='color:darkblue;'>"+(session.getAttribute("email_id")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Mobile No:</b><b style='color:darkblue;'>"+(session.getAttribute("mobile_no")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Address:</b><b style='color:darkblue;'>"+(session.getAttribute("address")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>State:</b><b style='color:darkblue;'>"+(session.getAttribute("state")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Enrollment No:</b><b style='color:darkblue;'>"+(session.getAttribute("enrollment_no")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Branch:</b><b style='color:darkblue;'>"+(session.getAttribute("branch")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Semester:</b><b style='color:darkblue;'>"+(session.getAttribute("semester")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Institute:</b><b style='color:darkblue;'>"+(session.getAttribute("institute")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Password:</b><b style='color:darkblue;'>"+(session.getAttribute("password")).toString()+"</b></p></body></html>");

       %>
       </div>
       <%
        }
        
        
        if(session.getAttribute("flag").toString()=="0")
        {   try{
            ps=conn.prepareStatement("insert into student(first_name,middle_name,last_name,gender,date_of_birth,email_id,mobile_no,address,state,enrollment_no,branch,semester,institute,password) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,(session.getAttribute("first_name").toString()));
            ps.setString(2,(session.getAttribute("middle_name").toString()));
            ps.setString(3,(session.getAttribute("last_name").toString()));
            ps.setString(4,(session.getAttribute("gender").toString()));
            ps.setString(5,(session.getAttribute("date_of_birth").toString()));
            ps.setString(6,(session.getAttribute("email_id").toString()));
            ps.setString(7,(session.getAttribute("mobile_no").toString()));
            ps.setString(8,(session.getAttribute("address").toString()));
            ps.setString(9,(session.getAttribute("state").toString()));
            ps.setString(10,(session.getAttribute("enrollment_no").toString()));
            ps.setString(11,(session.getAttribute("branch").toString()));
            ps.setString(12,(session.getAttribute("semester").toString()));
            ps.setString(13,(session.getAttribute("institute").toString()));
            ps.setString(14,(session.getAttribute("password").toString()));
            ps.executeUpdate();
            }catch(Exception e){

                %><script> alert("This User is already exist"); </script><%
              RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
                rd.include(request, response);
            %><script>Navigate3();</script><%}%>
     <p style="color: green;font-size: 80px;text-align: center;vertical-align: middle;margin-top: 40px;"><b>Successful</b></p>
   <div id="rcorners1">
         
                <% out.println("<html><body><p style='font-size:40px;margin:40px 0px 20px 40px;'><b style='color:darkcyan;'>FullName:</b><b style='color:darkblue;'>"+(session.getAttribute("first_name").toString())+" "+(session.getAttribute("middle_name").toString())+" "+(session.getAttribute("last_name").toString())+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Gender:</b><b style='color:darkblue;'>"+(session.getAttribute("gender")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Date Of Birth:</b><b style='color:darkblue;'>"+(session.getAttribute("date_of_birth")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Email Id:</b><b style='color:darkblue;'>"+(session.getAttribute("email_id")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Mobile No:</b><b style='color:darkblue;'>"+(session.getAttribute("mobile_no")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Address:</b><b style='color:darkblue;'>"+(session.getAttribute("address")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>State:</b><b style='color:darkblue;'>"+(session.getAttribute("state")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Enrollment No:</b><b style='color:darkblue;'>"+(session.getAttribute("enrollment_no")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Branch:</b><b style='color:darkblue;'>"+(session.getAttribute("branch")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Semester:</b><b style='color:darkblue;'>"+(session.getAttribute("semester")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Institute:</b><b style='color:darkblue;'>"+(session.getAttribute("institute")).toString()+"</b></p></body></html>");
                out.println("<html><body><p style='font-size:40px;margin:0 0 30px 40px;'><b style='color:darkcyan;'>Password:</b><b style='color:darkblue;'>"+(session.getAttribute("password")).toString()+"</b></p></body></html>");
                
            
            if(session.getAttribute("lo").toString()=="01"){%>
                       <button type="button" class="back" onclick="Navigate4()" style="margin-top: 10px;position: relative;float: right;">Back</button>
                       <% session.invalidate(); %>
                                       <%}%>

                              <button type="button" class="back" onclick="Navigate()" style="margin-top: 10px;position: relative;float: right;">Login</button>

       </div>
       <%
        }

        %>
        
    </body>
</html>
