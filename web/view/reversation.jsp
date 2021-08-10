<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Reservation</title>

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
    <body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

        <!-- PRE LOADER -->
        <section class="preloader">
            <div class="spinner">

                <span class="spinner-rotate"></span>

            </div>
        </section>



        <div id="navbar"><%@ include file="../components/navbar.jsp" %></div>



        <!-- MAKE AN APPOINTMENT -->
        <section id="appointment" data-stellar-background-ratio="3">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-6">
                        <img src="img/appointment-image.jpg" class="img-responsive" alt="">
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <!-- CONTACT FORM HERE -->
                        <form id="appointment-form" role="form" method="post" action="reservation" >

                            <!-- SECTION TITLE -->
                            <div class="section-title wow fadeInUp" data-wow-delay="0.4s">
                                <h2>Make an appointment</h2>
                            </div>

                            <div class="wow fadeInUp" data-wow-delay="0.8s">
                                <div class="col-md-6 col-sm-6">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Full Name">
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <label for="date">Select Date</label>
                                    <input type="date" name="date" value="" class="form-control">
                                </div>

                                <div class="col-md-6 col-sm-6">
                                    <label for="select">Select Department</label>
                                    <select class="form-control" name="department">
                                        <option>General Health</option>
                                        <option>Cardiology</option>
                                        <option>Dental</option>
                                        <option>Medical Research</option>
                                    </select>
                                </div>

                                <div class="col-md-12 col-sm-12">
                                    <label for="telephone">Phone Number</label>
                                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="Phone">
                                    <label for="telephone">Insurance Code</label>
                                    <input type="tel" class="form-control" id="phone" name="icode" placeholder="Insurance code">
                                    <label for="Message">Additional Message</label>
                                    <textarea class="form-control" rows="5" id="message" name="message" placeholder="Message"></textarea>
                                    <button type="submit" class="form-control" id="cf-submit" name="submit">Submit Button</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </section>
        <script language="javascript">
            var button = document.getElementById("cf-submit");
            button.onclick = function(){
                alert("Booking Success");
            }
        </script>
        
        <%@ include file="../components/footer.jsp" %>

        <!-- SCRIPTS -->
        <script src="js/home/jquery.js"></script>
        <script src="js/home/bootstrap.min.js"></script>
        <script src="js/home/jquery.sticky.js"></script>
        <script src="js/home/jquery.stellar.min.js"></script>
        <script src="js/home/wow.min.js"></script>
        <script src="js/home/smoothscroll.js"></script>
        <script src="js/home/owl.carousel.min.js"></script>
        <script src="js/home/custom.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>


    </body>
</html>
