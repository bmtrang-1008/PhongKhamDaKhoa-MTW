<%-- 
    Document   : record-physical
    Created on : Jul 1, 2021, 4:15:08 AM
    Author     : Trangbmhe150464
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Your Medical Record</title>

        <link rel="shortcut icon" type="image/png" href="favicon/iconlogo.png"/>

        <link rel="stylesheet" type="text/css" href="css/table/vendor/bootstrap/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="css/table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="css/table/vendor/animate/animate.css">

        <link rel="stylesheet" type="text/css" href="css/table/vendor/select2/select2.min.css">

        <link rel="stylesheet" type="text/css" href="css/table/vendor/perfect-scrollbar/perfect-scrollbar.css">

        <link rel="stylesheet" type="text/css" href="css/table/css/util.css">
        <link rel="stylesheet" type="text/css" href="css/table/css/main.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">


        <link rel="stylesheet" href="css/tooplate-style.css">

        <style>
            .abc{
                background-color: aliceblue;
            }
        </style>

    </head>

    <body>
        <section class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container" style="display: inline">

                <div class="navbar-header">
                    <!-- lOGO TEXT HERE -->
                    <h3>Welcome to Department of Subclinical</h3>
                </div>

                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right" style="display: inline">
                        <li><a href="home#top" class="smoothScroll">Home</a></li>

                        <li><a href="home#team" class="smoothScroll">Doctors</a></li>
                        <li><a href="home#news" class="smoothScroll">News</a></li>
                        <li><a href="home#footer" class="smoothScroll">Contact</a></li>
                        <li class="appointment-btn btn-blue" style="border-radius: 5px"><a href="search">Search another result</a></li>
                        <li class="appointment-btn btn-red" style="border-radius: 5px"><a href="login">Log out</a></li>
                    </ul>
                </div>

            </div>
        </section>
        <div class="limiter">
            <div class="container-table100">
                <div class="wrap-table100">
                    <div style="font-size: 20px;">
                        <div class="abc">
                            <br/>
                            <span>Patient name: ${requestScope.patient.name}</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <span>Age: ${requestScope.patient.age}</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <c:if test="${requestScope.patient.gender == false}">
                                <span>Gender: Female</span> <br/>
                            </c:if>
                            <c:if test="${requestScope.patient.gender == true}">
                                <span>Gender: Male</span> <br/>
                            </c:if>
                            <span>Medical Option: ${requestScope.patient.option}</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                            <c:if test="${requestScope.patient.code != null}">
                                <span>Insurance code: ${requestScope.patient.code}</span>
                            </c:if>
                            <c:if test="${requestScope.patient.code == null}">
                                <span>Insurance code: Don't have</span>
                            </c:if>

                            <br/><br/><div>Address: ${requestScope.patient.address}</div>
                            <div>Room: Subclinic 1</div>
                            <br/></div>

                            <a class="btn btn-primary btn-lg" style="border-radius: 5px; float: right;" href="record">See final result</a>
                        <br/><br/>
                    </div>
                    <div style="text-align: center; font-weight: bolder; font-size: 50px">Physical Record</div>
                    <br/>
                    <div class="table">
                        <div class="row header">
                            <div class="cell">
                                Type
                            </div>
                            <div class="cell">
                                Result
                            </div>
                            <div class="cell">
                                Normal
                            </div>
                            <div class="cell">
                                Conclusion
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Height
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result2.hc}  m
                            </div>
                            <div class="cell" data-title="Normal value">
                                
                            </div>
                            <div class="cell" data-title="Conclusion">
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Weight
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result2.hemoglobin}  kg
                            </div>
                            <div class="cell" data-title="Normal value">
                                
                            </div>
                            <div class="cell" data-title="Conclusion">
                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                BMI
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result2.hemetocrit} 
                            </div>
                            <div class="cell" data-title="Normal value">
                                0.37 - 0.47  l/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result2.hemetocrit > 0.47}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result2.hemetocrit < 0.37}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result2.hemetocrit <= 0.47 && requestScope.result2.hemetocrit >= 0.37}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Pulse rate
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result2.reticulocyte}  %
                            </div>
                            <div class="cell" data-title="Normal value">
                                0.1 - 0.5  %
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result2.reticulocyte > 0.5}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result2.reticulocyte < 0.1}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result2.reticulocyte <= 0.5 && requestScope.result2.reticulocyte >= 0.1}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>



                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Blood pressure
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result2.blood}  mm / 3m
                            </div>
                            <div class="cell" data-title="Normal value">
                                810 - 1100 mm / 3m
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result2.blood > 1100}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result2.blood < 810}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result2.blood <= 1100 && requestScope.result2.blood >= 810}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>


                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Physical type
                            </div>
                            <div class="cell" data-title="Value">
                            </div>
                            <div class="cell" data-title="Normal value">

                            </div>
                            <div class="cell" data-title="Conclusion">
                                
                            </div>
                        </div>
                    </div>
                </div> 
            </div> 
        </div>




        <!--===============================================================================================-->	
        <script src="css/table/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="css/table/vendor/bootstrap/js/popper.js"></script>
        <script src="css/table/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="css/table/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="css/table/js/main.js"></script>

    </body>
</html>
