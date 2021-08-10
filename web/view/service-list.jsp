<%-- 
    Document   : service
    Created on : Jul 21, 2021, 5:58:36 PM
    Author     : Trangbmhe150464
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="shortcut icon" type="image/png" href="img/iconlogo.png"/>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/home/bootstrap.min.css">
        <link rel="stylesheet" href="css/home/font-awesome.min.css">
        <link rel="stylesheet" href="css/home/animate.css">
        <link rel="stylesheet" href="css/home/owl.carousel.css">
        <link rel="stylesheet" href="css/home/owl.theme.default.min.css">

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/home/tooplate-style.css">
    </head>
    <body>
        
        <div id="navbar"><%@ include file="../components/navbar.jsp" %></div>
        
        <section id="service" data-stellar-background-ratio="1">
            <div class="container">
                <h1>Services List</h1>
                <div class="row">
                    <br>
                    <div class="clearfix"></div>
                    <br>
                    <c:forEach items="${requestScope.services}" var="s">
                        <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.6s">
                            <a href="service-detail?id=${s.id} " >
                                <img src="img/new2.jpg" class="img-responsive" alt="" height="800px">
                            </a>
                            <div class="news-info">
                                <span>May 20, 2021</span>
                                <h3><a href="service-detail?id=${s.id} " >${s.name}</a></h3>
                                <p>${s.description}</p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
            </div>
        </section>
        
    </body>
</html>
