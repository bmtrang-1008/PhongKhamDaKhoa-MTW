<%-- 
    Document   : doctor-list
    Created on : Jun 24, 2021, 4:09:55 PM
    Author     : HIEU19
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../doctor-list_style/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <h2 style="text-align: center;">Doctor List</h2>
        <!--        replace navigation bar by this tag-->
        <div class="container">
            <div class="container-fluid mt-3 mb-3">
                <div class="row g-2">
                    <c:forEach items="${requestScope.doctors}" var="d">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="img-container">
                                    <img src="https://i.imgur.com/zS03HnV.jpg" class="img-fluid">
                                </div>
                                <div class="product-detail-container">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h6 class="mb-0">${d.user.full_name}</h6> 
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center mt-2" style="color: black;">
                                        <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                        
                                    </div>
                                        <div class="mt-3"> <a style="color: #000; text-decoration: none;" href="feedback?doctor_id=${d.user.id}&url=client"><button  class="btn btn-danger btn-block">Feedback</button></a></div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>                    
                </div>
            </div>
        </div>
    </body>
</html>
