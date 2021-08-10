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
            background: aliceblue;
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
                    <div style="font-size: 20px;" class="abc">
                        <br/>
                    <span>Patient name: ${requestScope.patient.name}</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <span>Age: ${requestScope.patient.age}</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <c:if test="${requestScope.patient.gender == false}">
                        <span>Gender: Female</span> <br/>
                    </c:if>
                    <c:if test="${requestScope.patient.gender == true}">
                        <span>Gender: Male</span> <br/>
                    </c:if>
                    <span>Medical Option: ${requestScope.patient.option}</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <c:if test="${requestScope.patient.code != ''}">
                    <span>Insurance code: ${requestScope.patient.code}</span>
                    </c:if>
                    <c:if test="${requestScope.patient.code == ''}">
                    <span>Insurance code: Don't have</span>
                    </c:if>
                    <br/><br/><div>Address: ${requestScope.patient.address}</div>
                    <div>Room: Subclinic 1</div>
                    Print <a class='north' href="javascript:window.print()" title="Print"><img src="css/profile/images/icn-print.jpg" alt="" /></a>
                    <br/></div>
                    <a class="btn btn-primary btn-lg" style="border-radius: 5px; background-color: #868e96;" href="home">Back to home</a> 
                    <a class="btn btn-primary btn-lg" style="border-radius: 5px; float: right;" href="view/option-view.jsp">See others records</a>
                    <br/><br/>
                    
                    <div style="text-align: center; font-weight: bolder; font-size: 50px">Biochemical test records</div>
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
                                Ure
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.ure}  mmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                2.85 - 7.85  mmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.ure > 7.85}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.ure < 2.85}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.ure < 7.85 && requestScope.result1.ure > 2.85}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Glucose
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.glucose}  mmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                2.99 - 6.11  mmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.glucose > 6.11}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.glucose < 2.99}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.glucose < 6.11 && requestScope.result1.glucose > 2.99}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Creatinine
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.creatinine}  μmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                53 - 93  μmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.creatinine > 93}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.creatinine < 53}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.creatinine < 93 && requestScope.result1.glucose > 53}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Acid uric
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.acid_uric}  μmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                285.8 - 380.1  μmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.acid_uric > 380.1}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.acid_uric < 285.8}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.acid_uric < 380.1 && requestScope.result1.acid_uric > 285.8}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>



                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Protein
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.protein}  g/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                60 - 80 g/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.protein > 80}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.protein < 60}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.protein < 80 && requestScope.result1.protein > 60}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Cholesterol
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.cholesterol}  mmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                3.32 - 5.68 mmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.cholesterol > 5.68}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.cholesterol < 3.32}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.cholesterol < 5.68 && requestScope.result1.cholesterol > 3.32}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                Calcium
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.calcium}  mmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                2.02 - 2.60 mmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.calcium > 2.60}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.calcium < 2.02}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.calcium < 2.60 && requestScope.result1.calcium > 2.02}">
                                    Normal value
                                </c:if>
                            </div>
                        </div>

                        <div class="row">
                            <div class="cell" data-title="Test name">
                                PH
                            </div>
                            <div class="cell" data-title="Value">
                                ${requestScope.result1.ph}  mmol/l
                            </div>
                            <div class="cell" data-title="Normal value">
                                7.35 - 7.45 mmol/l
                            </div>
                            <div class="cell" data-title="Conclusion">
                                <c:if test="${requestScope.result1.ph > 7.45}">
                                    High value
                                </c:if>
                                <c:if test="${requestScope.result1.ph < 7.35}">
                                    Low value
                                </c:if>
                                <c:if test="${requestScope.result1.ph < 7.45 && requestScope.result1.ph > 7.35}">
                                    Normal value
                                </c:if>
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