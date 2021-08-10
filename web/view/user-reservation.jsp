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
    </head>
    <body>

        <form action="ReservationDetail" method="post">

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
                   
                    <table class="table">
                        <thead>
                            <tr>
                                
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Insurance_code</th>
                                <th scope="col">Date</th>
                                <th scope="col">email</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.list}" var="l">
                                <tr>
                                    
                                    <td>${l.id}</td>
                                    <td>${l.full_name}</td>
                                    <td>${l.phone}</td>
                                    <td>${l.insurance_code}</td>
                                    <td>${l.exam_date}</td>
                                    <td>${l.email}</td>
                                    <c:if test="${l.status==0}"><td>Pending</td><td><a href="cancellreservation?id=${l.id}">Cancell</a></td> </c:if>
                                    <c:if test="${l.status==1}"><td>Cancelled</td> </c:if>
                                    <c:if test="${l.status==2}"><td>Booking Success</td> </c:if>
                                    <c:if test="${l.status==3}"><td>Booking Fail</td> </c:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>





        </form>
        <script src="css/login/js/jquery-3.3.1.min.js"></script>
        <script src="css/login/js/popper.min.js"></script>
        <script src="css/login/js/bootstrap.min.js"></script>
        <script src="css/login/js/main.js"></script>
    </body>
</html>
