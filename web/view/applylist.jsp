<%-- 
    Document   : sendcode
    Created on : Mar 27, 2021, 6:01:08 PM
    Author     : HIEU19
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send code</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/png" href="favicon/iconlogo.png"/>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <style>
            .styled-table {
                width: 100%;
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 0.9em;
                font-family: sans-serif;
                min-width: 400px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            }
            .styled-table thead tr {
                background-color: #009879;
                color: #ffffff;
                text-align: left;
            }
            .styled-table th,
            .styled-table td {
                padding: 12px 15px;
            }
            .styled-table tbody tr {
                border-bottom: 1px solid #dddddd;
            }

            .styled-table tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }

            .styled-table tbody tr:last-of-type {
                border-bottom: 2px solid #009879;
            }
            .styled-table tbody tr.active-row {
                font-weight: bold;
                color: #009879;
            }
        </style>

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
        <h1 style="text-align: center; margin-top:20px; margin-bottom: 20px;">Apply List</h1>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Register department</th>
                    <th>Experience</th>
                    <th>Action</th>

                </tr>
            </thead>
            <tbody>

                <c:forEach items="${requestScope.list}" var="l">
                    <tr class="active-row">

                        <td>${l.fullname}</td>
                        <c:if test="${l.gender == true}">
                            <td>Male</td>
                        </c:if>
                        <c:if test="${l.gender == false}">
                            <td>Fe-Male</td>
                        </c:if>
                        <td>${l.phone}</td>
                        <c:if test="${l.dept_id == 1}">
                            <td>Examination Department</td>
                        </c:if>
                        <c:if test="${l.dept_id == 2}">
                            <td>Cardiology Department</td>
                        </c:if>
                        <c:if test="${l.dept_id == 3}">
                            <td>Oncology Department</td>
                        </c:if>
                        <c:if test="${l.dept_id == 4}">
                            <td>Pediatrics Department</td>
                        </c:if>
                        <c:if test="${l.dept_id == 5}">
                            <td>Surgery Department</td>
                        </c:if>
                        <c:if test="${l.dept_id == 6}">
                            <td>Nutrition Department</td>
                        </c:if>

                        <td>${l.exp_year}</td>
                        <td><a onclick="check('accept')" href="doapply?id=${l.id}&action=1">Accept</a>&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="check('deny')" href="doapply?id=${l.id}&action=2" >Deny</a></td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            function check(a){
                confirm("Are you sure to " + a + " this doctor?");
            }
        </script>
    </body>
</html>
