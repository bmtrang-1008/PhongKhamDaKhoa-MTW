<%-- 
    Document   : record
    Created on : Jul 1, 2021, 3:37:58 AM
    Author     : Trangbmhe150464
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Final Result</title>
        <link rel="shortcut icon" type="image/png" href="favicon/iconlogo.png"/>
        <link type="text/css" rel="stylesheet" href="css/profile/css/green.css" />
        <link type="text/css" rel="stylesheet" href="css/profile/css/print.css" media="print"/>
        <script type="text/javascript" src="css/profile/js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="css/profile/js/jquery.tipsy.js"></script>
        <script type="text/javascript" src="css/profile/js/cufon.yui.js"></script>
        <script type="text/javascript" src="css/profile/js/scrollTo.js"></script>
        <script type="text/javascript" src="css/profile/js/myriad.js"></script>
        <script type="text/javascript" src="css/profile/js/jquery.colorbox.js"></script>
        <script type="text/javascript" src="css/profile/js/custom.js"></script>

        <script type="text/javascript">
            Cufon.replace('h1,h2');
        </script>
        
        <style>
            p{
                font-size: 15px;
                font-family: cursive;
            }
        </style>
    </head>
    <body>
        <!-- Begin Wrapper -->
        <div id="wrapper">

            <div class="wrapper-top"></div>
            <div class="wrapper-mid">
                <!-- Begin Paper -->
                <div id="paper">
                    <div class="paper-top"></div>
                    <div id="paper-mid">
                        <div class="entry">
                            <!-- Begin Image -->

                            <!-- End Image -->
                            <!-- Begin Personal Information -->
                            <div class="self">
                                <h1 class="name" style="width: 400px">${requestScope.patient.name}</h1>
                                 
                                <br/><br/>
                                <ul>
                                    <li class="ad">Address: ${requestScope.patient.address}</li>

                                    <li class="tel">Phone: ${requestScope.patient.phone}</li>
                                    <li>Insurance code: ${requestScope.patient.code}</li>

                                    <li >Date: ${requestScope.result.date}</li>
                                </ul>
                            </div>
                            <!-- End Personal Information -->
                            <!-- Begin Social -->
                            <div class="social">
                                <ul>
                                    <li><a class='north' href="javascript:window.print()" title="Print"><img src="css/profile/images/icn-print.jpg" alt="" /></a></li>
                                </ul>
                            </div>
                            <!-- End Social -->
                        </div>
                        <!-- Begin 1st Row -->
                        <div class="entry">
                            <h2>Hepatobiliary</h2>
                            <p>${requestScope.result.hepa}</p>
                        </div>
                        <!-- End 1st Row -->

                        <div class="entry">
                            <h2>Pancreas</h2>
                            <p>${requestScope.result.panc}</p>
                        </div>

                        <div class="entry">
                            <h2>Reins</h2>
                            <p>${requestScope.result.rein}</p>
                        </div>

                        <div class="entry">
                            <h2>Bladder</h2>
                            <p>${requestScope.result.blad}</p>
                        </div>

                        <div class="entry">
                            <h2>Other</h2>
                            <p>${requestScope.result.other}</p>
                        </div>

                        <div class="entry">
                            <h2 style="font-weight: bolder; font-size: 30px">Conclusion</h2>
                            <p>${requestScope.result.f_rs}</p>
                        </div>

                        <div class="entry" style="float: left">
                            <br/><br/>
                            <h2>Doctor</h2><br/><br/>
                            <img style="width: 200px" src="img/${requestScope.doctor.sign}"></img>
                            <br/><br/>
                            <h3>${requestScope.doctor.name}</h3>
                        </div>
                        

                    </div>
                    <div class="clear"></div>
                    <div class="paper-bottom"></div>
                </div>
                <!-- End Paper -->
            </div>
            <div class="wrapper-bottom"></div><br/>
            <a class="btn btn-primary btn-lg" style="border-radius: 5px; margin-left:  700px;" href="result1"><span style="font-size: 30px">See detail records</span></a> 
        </div>

        <!-- End Wrapper -->
    </body>
</html>

