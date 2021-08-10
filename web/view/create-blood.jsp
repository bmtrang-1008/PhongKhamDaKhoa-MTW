<%-- 
    Document   : cart
    Created on : Mar 2, 2021, 8:20:31 PM
    Author     : HIEU19
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="favicon/iconlogo.png"/>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Create results</title>
    </head>
    <body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="dashboard">Doctor website</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i
                    class="fas fa-bars"></i></button>
                   
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">

                    <div class="input-group-append" style="color: white; font-size: 30px;">
                        Department of Subclinical
                    </div>
                </div>
            </form>
              
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="home">Home Page</a>             
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="logout">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
         <div class="container">
        <br/><br/>
        <h1 style="text-align: center">Blood cells analysis</h1>
        <form action="create-blood" method="post">

            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Number of HC (mmol/l)</label>
                <input type="text" class="form-control" id="inputCity" name="hc">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Hemoglobin (g/l)</label>
                <input type="text" class="form-control" id="inputCity" name="hemo">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Hematocrit (l/l)</label>
                <input type="text" class="form-control" id="inputCity" name="hema">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Reticulocyte (%)</label>
                <input type="text" class="form-control" id="inputCity" name="reti">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Settled blood (mm/1h)</label>
                <input type="text" class="form-control" id="inputCity" name="sett">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Flowed blood (mm/3m)</label>
                <input type="text" class="form-control" id="inputCity" name="flow">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Platelet (unit/μl)</label>
                <input type="text" class="form-control" id="inputCity" name="pat">
            </div>
            <div class="form-group col-md-10">
                <label for="inputCity">&nbsp;&nbsp;Blood type</label>
                <input type="text" class="form-control" id="inputCity" name="type">
            </div>
            <button type="submit" class="btn btn-primary btn-lg">Create</button>
            
        </form>
         </div>
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
