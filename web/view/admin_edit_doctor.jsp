<%-- 
    Document   : profile
    Created on : Jul 5, 2021, 9:34:20 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="css/profile/profile.css">
        <script>
            function showDiv() {
                document.getElementById('welcomeDiv2').readOnly = false;
                document.getElementById('welcomeDiv3').readOnly = false;
                document.getElementById('welcomeDiv4').readOnly = false;
                document.getElementById('welcomeDiv5').readOnly = false;
                document.getElementById('welcomeDiv6').readOnly = false;
                document.getElementById('welcomeDiv7').readOnly = false;
                document.getElementById('genderR1').disabled = false;
                    document.getElementById('genderR2').disabled = false;
                document.getElementById('1').disabled = false;
                document.getElementById('button').style.display = "inline-block";
            }
        </script>
    </head>
    <body>

        <form action="DoctorUpdate" method="post">

            <div class="container">
                <div class="main-body">

                    <!-- Breadcrumb -->
                    <nav aria-label="breadcrumb" class="main-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home">Home</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0)">User</a></li>
                            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                        </ol>
                    </nav>
                    <!-- /Breadcrumb -->
                    <c:set value="${requestScope.doctor}" var="u"/>
                    <div class="row gutters-sm">
                        <div class="col-md-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                        <div class="mt-3">
                                            <h4>${u.user.full_name}</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-8">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Username</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" name="username" readonly="" value="${u.user.username}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Password</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="password" name="password" readonly="" value="${u.user.password}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">

                                            <input type="text" name="full_name" readonly="" id="welcomeDiv2" value="${u.user.full_name}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Date of birth</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" name="dob" readonly="" id="welcomeDiv3" value="${u.user.dob}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">

                                            <input type="email" name="email" readonly="" id="welcomeDiv4" value="${u.user.email}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Phone</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">

                                            <input type="text" name="phone" readonly="" id="welcomeDiv5" value="${u.user.phone}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Gender</h6>
                                        </div>
                                        
                                        <div class="col-sm-9 text-secondary">
                                            
                                            Male
                                            <input id="genderR1" style="display: inline" disabled="" name="gender" <c:if test="${u.user.gender == true}"> checked="" </c:if>  type="radio" value="true">
                                            Female
                                            <input id="genderR2" style="display: inline" <c:if test="${u.user.gender == false}"> checked="" </c:if>disabled="" name="gender" type="radio" value="false">
                                            </div>
                                        </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Year Of Experience</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" name="exp_year" id="welcomeDiv6" readonly="" required="" value="${u.exp_year}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Room</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">

                                            <input type="text" name="room_number" readonly="" required="" id="welcomeDiv7" value="${u.room_number}">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Department</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <select name="dept" id="1" disabled="">
                                                <c:forEach items="${requestScope.depts}" var="d">
                                                    <option value="${d.ID}" <c:if test="${d.ID == u.dept_id}">selected=""</c:if>>
                                                        ${d.dept_name}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <input type="button" onclick="showDiv();" value="Edit"/>
                                            <input type="submit" id="button" style="display:  none; margin-left: 20px;" value="Save"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
        <script src="css/login/js/jquery-3.3.1.min.js"></script>
        <script src="css/login/js/popper.min.js"></script>
        <script src="css/login/js/bootstrap.min.js"></script>
        <script src="css/login/js/main.js"></script>
    </body>
</html>
