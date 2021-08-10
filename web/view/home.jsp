</html><!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<html lang="en">
    
    <head>
        <title>Home</title>
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
<!--        replace navigation bar by this tag-->
        <div id="navbar"><%@ include file="../components/navbar.jsp" %></div>
        <!-- HOME -->
        <section id="home" class="slider" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">

                    <div class="owl-carousel owl-theme">
                        <div class="item item-first">
                            <div class="caption">
                                <div class="col-md-offset-1 col-md-10">
                                    <h3>Let's make your life happier</h3>
                                    <h1>Healthy Living</h1>
                                    <a href="search" class="section-btn btn btn-default btn-blue smoothScroll">See medical record</a>
                                </div>
                            </div>
                        </div>

                        <div class="item item-second">
                            <div class="caption">
                                <div class="col-md-offset-1 col-md-10">
                                    <h3>We care about you</h3>
                                    <h1>A family of hospitals for your family</h1>
                                    <a href="#appointment" class="section-btn btn btn-default btn-primary smoothScroll">Make a Examination Reservation</a>
                                </div>
                            </div>
                        </div>

                        <div class="item item-third">
                            <div class="caption">
                                <div class="col-md-offset-1 col-md-10">
                                    <h3>Always Caring. Always Here</h3>
                                    <h1>Your Health Benefits</h1>
                                    <a href="#team" class="section-btn btn btn-default btn-gray smoothScroll">Our best doctors</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>


        <!-- ABOUT -->
        <section id="about">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-6">
                        <div class="about-info">
                            <h2 class="wow fadeInUp" data-wow-delay="0.6s">Welcome to General Hospital of Agricultural </h2>
                            <div class="wow fadeInUp" data-wow-delay="0.8s">
                                <p>Established in 1967, General Hospital of Agricultural today has experienced more than 50 years of development and growth. From a small infirmary built during the war, it became a General Hospital of Agricultural in Vietnam.</p>
                                <p>From the period of resistance war, the period of peace was restored and now the period of the market economy has a socialist orientation. General Hospital of Agricultural has always successfully completed its tasks in medical examination and treatment, protection, care and health promotion for staff of the Agriculture sector in particular and the people in general. </p>
                            </div>
                            <figure class="profile wow fadeInUp" data-wow-delay="1s">
                                <img src="img/mrTung.png" class="img-responsive" alt="">
                                <figcaption>
                                    <h3>Assoc. Prof. PhD M.D Hà Hữu Tùng </h3>
                                    <p>HOSPITAL DIRECTOR</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>

                </div>
            </div>
        </section>


        <!-- TEAM -->
        <section id="team" data-stellar-background-ratio="1">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 col-sm-6">
                        <div class="about-info">
                            <h2 class="wow fadeInUp" data-wow-delay="0.1s">Our Best Doctors</h2>
                        </div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="col-md-4 col-sm-6">
                        <div class="team-thumb wow fadeInUp" data-wow-delay="0.2s">
                            <img src="img/doctor.jpg" class="img-responsive" alt="">

                            <div class="team-info">
                                <h3>Dr Nguyễn Trọng Hưng</h3>
                                <p>Head of Laboratory and Pathology Department</p>
                                <div class="team-contact-info">
                                    <p><i class="fa fa-phone"></i> 0904-373-008</p>
                                    <p><i class="fa fa-envelope-o"></i> <a href="https://www.facebook.com/profile.php?id=100061994324164" target="_blank">hung64bvnn@gmail.com</a></p>
                                </div>
                                <ul class="social-icon">
                                    <li><a href="#" class="fa fa-linkedin-square"></a></li>
                                    <li><a href="#" class="fa fa-envelope-o"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <div class="team-thumb wow fadeInUp" data-wow-delay="0.4s">
                            <img src="img/chucuong.jpg" class="img-responsive" alt="">
                            <div class="team-info">
                                <h3>Dr Nguyễn Trọng Cường</h3>
                                <p>Head of Faculty of Pharmacy</p>
                                <div class="team-contact-info">
                                    <p><i class="fa fa-phone"></i> 0345-623-512</p>
                                    <p><i class="fa fa-envelope-o"></i> <a href="#">cuong68bvnn@gmail.com</a></p>
                                </div>
                                <ul class="social-icon">
                                    <li><a href="#" class="fa fa-facebook-square"></a></li>
                                    <li><a href="#" class="fa fa-envelope-o"></a></li>
                                    <li><a href="#" class="fa fa-flickr"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <div class="team-thumb wow fadeInUp" data-wow-delay="0.6s">
                            <img src="img/doctor3.jpg" class="img-responsive" alt="">

                            <div class="team-info">
                                <h3>Dr Phạm THị Thu Hoài</h3>
                                <p>Head of Ophthalmology</p>
                                <div class="team-contact-info">
                                    <p><i class="fa fa-phone"></i> 0946-432-544</p>
                                    <p><i class="fa fa-envelope-o"></i> <a href="#">hoai74bvnn@gmail.com</a></p>
                                </div>
                                <ul class="social-icon">
                                    <li><a href="#" class="fa fa-twitter"></a></li>
                                    <li><a href="#" class="fa fa-envelope-o"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- SERVICES LIST -->
        <section id="news" data-stellar-background-ratio="2.5">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <!-- SECTION TITLE -->
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <h2><a href="service">Common Services</a></h2>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                            <a href="http://benhviendakhoanongnghiep.vn/ap-dung-3-cong-nghe-cao-tren-cung-1-ca-benh-soi-mat-tai-phat/" target="_blank">
                                <img src="img/new1.jpg" class="img-responsive" alt="">
                            </a>
                            <div class="news-info">
                                <span>June 06, 2021</span>
                                <h3><a href="http://benhviendakhoanongnghiep.vn/ap-dung-3-cong-nghe-cao-tren-cung-1-ca-benh-soi-mat-tai-phat/" target="_blank">General Examination</a></h3>
                                <p>A network of good specialists who have/are working at leading major institutes, with verified information. </p>
                                <div class="author">
                                    <img src="img/general.jpg" class="img-responsive" alt="">
                                    <div class="author-info">
                                        <h5>Nguyen Trung Hieu</h5>
                                        <p>IT Department</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.6s">
                            <a href="http://benhviendakhoanongnghiep.vn/neu-doi-chan-cua-ban-ngung-di-cuoc-song-se-te-nhat-ra-sao/" target="_blank">
                                <img src="img/new2.jpg" class="img-responsive" alt="" height="800px">
                            </a>
                            <div class="news-info">
                                <span>May 20, 2021</span>
                                <h3><a href="http://benhviendakhoanongnghiep.vn/neu-doi-chan-cua-ban-ngung-di-cuoc-song-se-te-nhat-ra-sao/" target="_blank">Internal Examination</a></h3>
                                <p>Full of specialties, detailed doctor information, easy-to-understand instructions, patients easily choose the right doctor.</p>
                                <div class="author">
                                    <img src="img/author-image.jpg" class="img-responsive" alt="">
                                    <div class="author-info">
                                        <h5>Nguyen Trung Hieu</h5>
                                        <p>IT Department</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                            <a href="http://benhviendakhoanongnghiep.vn/sot-xuat-huyet-va-nhung-dieu-can-luu-y/" target="_blank">
                                <img src="img/new3.jpg" class="img-responsive" alt="">
                            </a>
                            <div class="news-info">
                                <span>April 09, 2021</span>
                                <h3><a href="http://benhviendakhoanongnghiep.vn/sot-xuat-huyet-va-nhung-dieu-can-luu-y/" target="_blank">Maxillofacial Examination</a></h3>
                                <p>We effectively support patients during the pre-exam, during and after the visit. </p>
                                <div class="author">
                                    <img src="img/author-image.jpg" class="img-responsive" alt="">
                                    <div class="author-info">
                                        <h5>Nguyen Trung Hieu</h5>
                                        <p>IT Department</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- NEWS -->
        <section id="news" data-stellar-background-ratio="2.5">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <!-- SECTION TITLE -->
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <h2>Latest News</h2>
                        </div>
                    </div>
                    <c:forEach items="${requestScope.NewsList}" var="n">
                    <div class="col-md-4 col-sm-6">
                        <!-- NEWS THUMB -->
                        <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                            <a href="${n.url}" target="_blank">
                                <img src="${n.image}" class="img-responsive" alt="">
                            </a>
                            <div class="news-info">
                                <span>${n.date_create}</span>
                                <h3><a href="${n.url}" target="_blank">${n.title}</a></h3>
                                <p>${n.description}</p>
                                <div class="author">
                                    <img src="${n.journalist.image}" class="img-responsive" alt="">
                                    <div class="author-info">
                                        <h5>${n.journalist.name}</h5>
                                        <p>Journalist</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        
        <!-- FOOTER -->
        <footer data-stellar-background-ratio="5" id="footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-4">
                        <div class="footer-thumb"> 
                            <h4 class="wow fadeInUp" data-wow-delay="0.4s">Contact Info</h4>
                            <p>General Hospital of Agricultural<br/><br/>
                                Address I: Km13+500 1A Highway - Ngoc Hoi - Thanh Tri - Hanoi<br/><br/>
                                Address II: No. 16 Lane 183 - Dang Tien Dong - Dong Da - Hanoi</p>

                            <div class="contact-info">
                                <p><i class="fa fa-phone"></i>04 3.861.5320</p>
                                <p><i class="fa fa-envelope-o"></i>benhviennongnghiep1@gmail.com</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4"> 
                        <div class="footer-thumb"> 
                            <h4 class="wow fadeInUp" data-wow-delay="0.4s">Latest News</h4>
                            <div class="latest-stories">
                                <div class="stories-image">
                                    <a href="http://benhviendakhoanongnghiep.vn/ap-dung-3-cong-nghe-cao-tren-cung-1-ca-benh-soi-mat-tai-phat/" target="_blank"><img src="img/news-image.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="stories-info">
                                    <a href="http://benhviendakhoanongnghiep.vn/ap-dung-3-cong-nghe-cao-tren-cung-1-ca-benh-soi-mat-tai-phat/" target="_blank"><h5>Amazing Technology</h5></a>
                                    <span>March 13, 2021</span>
                                </div>
                            </div>

                            <div class="latest-stories">
                                <div class="stories-image">
                                    <a href="http://benhviendakhoanongnghiep.vn/hieu-ro-hon-ve-vac-xin/" target="_blank"><img src="img/vaccine1.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="stories-info">
                                    <a href="http://benhviendakhoanongnghiep.vn/hieu-ro-hon-ve-vac-xin/" target="_blank"><h5>Knowledge about vaccine</h5></a>
                                    <span>June 08, 2020</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4"> 
                        <div class="footer-thumb">
                            <div class="opening-hours">
                                <h4 class="wow fadeInUp" data-wow-delay="0.4s">Opening Hours</h4>
                                <p>Open all the time (include holidays)</p>
                            </div> 

                            <ul class="social-icon">
                                <li><a class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                <li><a  class="fa fa-twitter"></a></li>
                                <li><a class="fa fa-instagram"></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-12 border-top">
                        <div class="col-md-4 col-sm-6">
                            <div class="copyright-text"> 
                                <p>Copyright &copy; 2021 &nbsp |&nbsp Design: SE1502-Team3ProVjp</p>
                                <p><a class="fa fa-envelope-o"></a> hieu19.developer@gmail.com</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="footer-link"> 
                                <a href="http://benhviendakhoanongnghiep.vn/" target="_blank">Laboratory Tests</a>
                                <a href="http://benhviendakhoanongnghiep.vn/" target="_blank">Departments</a>
                                <a href="http://benhviendakhoanongnghiep.vn/" target="_blank">Insurance Policy</a>
                                <a href="doctor-signup" target="_blank">Join us ?</a>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 text-align-center">
                            <div class="angle-up-btn"> 
                                <a href="#top" class="smoothScroll wow fadeInUp" data-wow-delay="1.2s"><i class="fa fa-angle-up"></i></a>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
        </footer>

        <!-- SCRIPTS -->
        <script src="js/home/jquery.js"></script>
        <script src="js/home/bootstrap.min.js"></script>
        <script src="js/home/jquery.sticky.js"></script>
        <script src="js/home/jquery.stellar.min.js"></script>
        <script src="js/home/wow.min.js"></script>
        <script src="js/home/smoothscroll.js"></script>
        <script src="js/home/owl.carousel.min.js"></script>
        <script src="js/home/custom.js"></script>

    </body>
</html>