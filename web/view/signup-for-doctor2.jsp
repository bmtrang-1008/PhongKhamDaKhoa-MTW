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
             <p>${requestScope.mess2}</p>
            <div class="col-lg-12 well">
                <div class="row">
                    <form action="signup-doctor2" method="post">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Department</label><br>
                                <select class="form-select" aria-label="Default select example" name="department">
                                    <c:forEach items="${requestScope.dept}" var="d">
                                        <option value="${d.ID}">${d.dept_name}</option> 
                                    </c:forEach>  
                                </select>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Room number</label>
                                    <input type="text" placeholder="Room number..." class="form-control" name="room">
                                </div>		
                                <div class="col-sm-6 form-group">
                                    <label>Experience year</label>
                                    <input type="text" placeholder="Experience year..." class="form-control" name="year">
                                </div>	
                            </div>
                            <button type="submit" class="btn btn-lg btn-info">Register</button>	
                           
                            <a href="login" style="margin-left: 500px">Login</a>
                        </div>
                    </form> 
                </div>
            </div>
        </div>
    </body>

</html>
