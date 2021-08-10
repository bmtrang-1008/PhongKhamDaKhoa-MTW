<%-- 
    Document   : signup-for-doctor
    Created on : Jul 5, 2021, 9:36:35 PM
    Author     : HIEU19
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="css/login/css/doctorsignup.css"/>
        <style>
            body{
                background-image: url("img/doctor-signup-bg.jpg");
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="well">Doctor Registration Form</h1>
<!--             <p>${requestScope.mess2}</p>-->
            <div class="col-lg-12 well">
                <div class="row">
                    <form action="doctor-signup" method="post">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>User Name</label>
                                    <input type="text" placeholder="Enter user name here.." class="form-control" name="username">
                                </div>
                               
                                <div class="col-sm-6 form-group">
                                    <label>Password</label>
                                    <input type="text" placeholder="Enter password.." class="form-control" name="pass">
                                </div>
                                 <c:if test="${requestScope.mess != null}">
                                    <div class="col-sm-6 form-group">
                                    ${requestScope.mess}
                                    </div>
                                </c:if>
                                <div class="col-sm-10 form-group">
                                    <label>Full name</label>
                                    <input type="text" placeholder="Enter your name here.." class="form-control" name="name">
                                </div>
                            </div>					
                            <div class="form-group">
                                <label>Address</label>
                                <textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
                            </div>	
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>DOB</label>
                                    <input type="date" placeholder="Enter Date of birth.." class="form-control" name="dob">
                                </div>	
                                <div class="col-sm-6 form-group">
                                    <label>Gender</label><br>
                                    <select class="form-select" aria-label="Default select example" name="gender">
                                        <option value="1">Male</option>
                                        <option value="2">Fe-male</option>
                                        <option value="3">Third gender</option>
                                    </select>
                                </div>		
                            </div>						
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="text" placeholder="Enter Phone Number Here.." class="form-control" name="phone">
                            </div>		
                            <div class="form-group">
                                <label>Email Address</label>
                                <input type="text" placeholder="Enter Email Address Here.." class="form-control" name="email">
                            </div>
                            <button type="submit" class="btn btn-lg btn-info">Next</button>	
                           
                            <a href="login" style="margin-left: 500px">Login</a>
                        </div>
                    </form> 
                </div>
            </div>
        </div>
    </body>

</html>
