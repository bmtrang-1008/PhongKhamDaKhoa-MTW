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
                document.getElementById('button').style.display = "inline-block";
                document.getElementById('genderR1').disabled = false;
                document.getElementById('genderR2').disabled = false;
            }
        </script>
    </head>
    <body>

        <form action="profile" method="post">

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
                    <c:forEach items="${requestScope.list}" var="u">
                        <div class="row gutters-sm">
                            <div class="col-md-4 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                            <div class="mt-3">
                                                <h4>${u.full_name}</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <br>
                                <button type="button" class="btn btn-light"><a style ="text-decoration: none; color: black" href="ReservationDetail">See your reservation</a></button>

                            </div>
                            <div class="col-md-8">
                                <div class="card mb-3">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Username</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                ${u.username}
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Password</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                **************
                                                <a href="change" style="float: right">Change password</a>
                                            </div>

                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Full Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input class="form-control" id="welcomeDiv2" readonly="" type="text" value="${u.full_name}" name="full_name"/>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Date of birth</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input class="form-control" type="date" id="welcomeDiv3" readonly="" value="${u.dob}"name="dob" placeholder="dd-MM-yyyy" required/>
                                                <i class="fas fa-calendar-alt"></i>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Email</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input class="form-control" type="email"id="welcomeDiv4" readonly="" name="email" value="${u.email}"/>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Phone</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <input class="form-control" type="text" id="welcomeDiv5" readonly=""name="phone" value=" ${u.phone}"/>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Gender</h6>

                                            </div>
                                            <div class="col-sm-9 text-secondary">

                                                Male
                                                <input id="genderR1" style="display: inline" disabled="" name="gender" <c:if test="${u.gender == true}"> checked="" </c:if>  type="radio" value="true">
                                                    Female
                                                    <input id="genderR2" style="display: inline" <c:if test="${u.gender == false}"> checked="" </c:if>disabled="" name="gender" type="radio" value="false">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">cod</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input class="form-control" type="date" id="welcomeDiv6" readonly="" value="${u.created_date}"name="c_date" placeholder="dd-MM-yyyy" required/>
                                                <i class="fas fa-calendar-alt"></i>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <input type="button" onclick="showDiv();" value="Edit"/>

                                                <input type="submit" id="button" style="display: none; margin-left: 20px;" value="Save"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>





                            </div>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </form>
        <script src="css/login/js/jquery-3.3.1.min.js"></script>
        <script src="css/login/js/popper.min.js"></script>
        <script src="css/login/js/bootstrap.min.js"></script>
        <script src="css/login/js/main.js"></script>
    </body>
</html>
