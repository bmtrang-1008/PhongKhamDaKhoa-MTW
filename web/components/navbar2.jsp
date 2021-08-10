<%-- 
    Document   : navbar2
    Created on : Mar 23, 2021, 1:05:25 AM
    Author     : HIEU19
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<section class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>

            <!-- lOGO TEXT HERE -->
            <h3>Welcome to General Hospital of Agricultural</h3>
        </div>

        <!-- MENU LINKS -->
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="home#top" class="smoothScroll">Home</a></li>

                <li><a href="home#team" class="smoothScroll">Doctors</a></li>
                <li><a href="home#news" class="smoothScroll">News</a></li>
                <li><a href="home#footer" class="smoothScroll">Contact</a></li>
                <li class="appointment-btn btn-blue" style="border-radius: 5px"><a href="home#appointment">Make an appointment</a></li>
                <li class="appointment-btn btn-red" style="border-radius: 5px"><a href="logout">Log out</a></li>
            </ul>
        </div>

    </div>
</section>
