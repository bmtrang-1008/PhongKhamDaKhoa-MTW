<%-- 
    Document   : service-detail
    Created on : Jul 21, 2021, 8:27:24 PM
    Author     : Trangbmhe150464
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Service Detail</title>
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
        
        
        <section id="services">
            <div class="container">
                <h1>${requestScope.service.name}</h1>
                <h3>${requestScope.service.description}</h3>
                <br>
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="about-info">
                            <c:choose>
                                <c:when test="${requestScope.service.id eq 1}">
                                    <div class="wow fadeInUp" data-wow-delay="0.8s">
                                <p style="text-align:justify">Các dịch vụ chính bao gồm:</p>
                                <ul>
                                    <li style="text-align:justify">Đo độ loãng xương</li>
                                    <li style="text-align:justify">Siêu âm: Siêu âm tổng quát, Siêu âm tim Doppler màu, siêu âm 4D, siêu âm các tuyến giáp, tuyến vú…</li>
                                    <li style="text-align:justify">X Quang kỹ thuật số: Chẩn đoán các thay đổi về hình thái của lồng ngực: khung xương-trung thất-tim, màng tim- phổi , mạch máu lớn, XQ hộp sọ, xoang, chi, cột sống…</li>
                                    <li style="text-align:justify">Nội soi chẩn đoán và Nội soi can thiệp không đau</li>
                                    <li style="text-align:justify">Dịch vụ xét nghiệm; Sinh hóa- Miễn dịch-Huyết học-Vi sinh và Sinh học phân tử đạt tiêu chuẩn an toàn sinh học cấp II và các Tiêu chuẩn của Trung Tâm kiểm chuẩn chất lượng xét nghiệm TP.Hồ Chí Minh</li>
                                    <li style="text-align:justify">Điện tim</li>
                                    <li style="text-align:justify">Điện não</li>
                                    <li style="text-align:justify">Điện cơ</li>
                                </ul>
                                <img src="https://www.hoanmysaigonclinic.com/upload/hoanmysaigonclinic.com/images/service/2020-07-08/detail_1594198638_yLJfwJk64J.jpg" width="571" height="347" alt="Chẩn đoán hình ảnh">
                                    </div>
                                </c:when>
                                <c:when test="${requestScope.service.id eq 2}">
                                    <div class="wow fadeInUp" data-wow-delay="0.8s">
                                <p style="text-align:justify">Với đội ngũ bác sĩ chuyên khoa, đa khoa giỏi chuyên môn và giàu kinh nghiệm khám và tư vấn tận tình, thân thiện; đội ngũ điều dưỡng luôn sẵn sàng chăm sóc, phục vụ,</p>

                                <p style="text-align:justify">Cùng với các phương tiện, thiết bị xét nghiệm và chẩn đoán hình ảnh tiên tiến, phòng khám cung cấp dịch vụ tư vấn,khám, chẩn đoán và điều trị bệnh ngoại trú, điều trị bệnh trong ngày với các gói khám và dịch vụ đa dạng, đáp ứng nhu cầu nhanh chóng, tiện lợi, thân thiện, bảo mật cũng như đầy đủ mọi nhu cầu khác của khách hàng.</p>

                                <p style="text-align:justify">Các dịch vụ khám bệnh ngoại trú</p>

                                <ul>
                                        <li style="text-align:justify">Chuyên khoa: Nội khoa tổng quát, Ngoại khoa tổng quát - Tim mạch, Nội tiết, Nhi khoa, Sản phụ khoa, Tiêu hóa, gan mật – Nội nhiễm, Huyết học, Thận – Tiết niệu, Mắt, Hô hấp, Da liễu, Tai – Mũi - Họng, Thần kinh, Chấn thương chỉnh hình, Răng – Hàm – Mặt, cùng với các thủ thuật-tiểu phẩu đã được SYT phê duyệt</li>
                                        <li style="text-align:justify">Phòng sơ cấp cứu và đơn vị giường lưu bệnh trong ngày</li>
                                        <li style="text-align:justify">Đơn vị Tiêm ngừa</li>
                                        <li style="text-align:justify">Khám chữa bệnh BHYT cùng tuyến và trái tuyến</li>
                                </ul>
                                <img src="https://www.hoanmysaigonclinic.com/upload/hoanmysaigonclinic.com/images/service/2017-11-01/detail_1509512357_SqezIbCuI3.png" width="571" height="347" alt="Ngoại trú">
                                    </div>
                                </c:when>
                                <c:when test="${requestScope.service.id eq 3}">
                                    <div class="wow fadeInUp" data-wow-delay="0.8s">
                                <p style="text-align:justify">Thông thường, khách hàng có thẻ Bảo hiểm của các công ty như BH Bảo Việt, BH Bưu Điện PTI, BH Insmart,… sẽ đến khám và thanh toán trực tiếp tại Phòng khám. Sau đó, khách hàng mang các giấy tờ liên quan đến công ty Bảo Hiểm để được chi trả lại. Phương pháp này mất nhiều thời gian và công sức đi lại của khách hàng.</p>

                                <p style="text-align:justify">
                                    Chính vì vậy, dịch vụ Bảo lãnh viện phí ra đời như một cầu nối giúp khách hàng tiết kiệm tối đa thời gian và công sức. Bạn sẽ được giảm trừ các hạng mục khám được quy định trên thẻ Bảo hiểm của bạn NGAY TẠI PHÒNG KHÁM HOÀN MỸ SÀI GÒN.</p>
                                    </div>
                                    <img src="https://www.hoanmysaigonclinic.com/upload/hoanmysaigonclinic.com/images/service/2020-07-08/detail_1594198740_pkmgqAWVb1.jpg" width="571" height="347" alt="Bảo lãnh viện phí">
                                </c:when>
                                <c:otherwise>
                                    <div class="wow fadeInUp" data-wow-delay="0.8s">
                                <p style="text-align:justify">
                                    <span style="font-size:14px">
                                        <span style="font-family:Arial,Helvetica,sans-serif">
                                            Khám sức khỏe định kỳ cho nhân viên không chỉ là phương pháp kiểm tra và đánh giá tổng quát tình trạng sức khỏe của người lao động, mà còn góp phần thể hiện sự quan tâm đúng mực của doanh nghiệp đối với cán bộ, nhân viên của mình.
                                        </span>
                                    </span>
                                </p>
                                <p style="text-align:justify">
                                    <span style="font-size:14px">
                                        <span style="font-family:Arial,Helvetica,sans-serif">
                                            Tại Phòng khám Đa khoa Hoàn Mỹ, chương trình khám sức khỏe được thiết kế linh hoạt theo thời gian, ngân sách của doanh nghiệp, đa dạng đáp ứng nhu cầu tầm soát bệnh.
                                        </span>
                                    </span>
                                </p>
                                <p style="text-align:justify">
                                    <span style="font-size:14px">
                                        <span style="font-family:Arial,Helvetica,sans-serif">
                                            - Tổ chức khám sức khỏe theo nhu cầu của doanh nghiệp.
                                        </span>            
                                    </span>
                                </p>
                                <p style="text-align:justify">
                                    <span style="font-size:14px">
                                        <span style="font-family:Arial,Helvetica,sans-serif">
                                            - Cung cấp dịch vụ lấy mẫu thử xét nghiệm trực tiếp tại doanh nghiệp, nhằm tiết kiệm thời gian di chuyển của cán bộ nhân viên công ty.
                                        </span></span></p>
                                <p style="text-align:justify">
                                    <span style="font-size:14px"
                                          ><span style="font-family:Arial,Helvetica,sans-serif">
                                            - Cung cấp nhiều chương trình ưu đãi và linh hoạt trong phương thức thanh toán.</span></span></p>
                                <p style="text-align:justify">
                                    <span style="font-size:14px">
                                        <span style="font-family:Arial,Helvetica,sans-serif">
                                            - Hỗ trợ đào tạo an toàn lao động và kỹ năng sơ cấp cứu cơ bản (Có cấp giấy chứng nhận tham gia đào tạo).</span></span></p>
                                <p style="text-align:justify"><br />
                                <span style="font-size:14px">
                                    <span style="font-family:Arial,Helvetica,sans-serif">
                                        Phòng khám Đa khoa Hoàn Mỹ trân trọng kính mời quý công ty sử dụng dịch vụ khám sức khỏe doanh nghiệp của chúng tôi để đảm bảo cho đội ngũ công nhân viên luôn có sức khỏe tốt nhất..
                                    </span></span></p>
                                <p style="text-align:justify">
                                    <span style="font-size:14px">
                                        <span style="font-family:Arial,Helvetica,sans-serif">
                                            Chúng tôi tự hào đã được đồng hành cùng các doanh nghiệp – thương hiệu lớn trong việc khám kiểm tra sức khỏe định kỳ cho nhân viên và nhận được những lời khen, lời cảm ơn của nhân viên cũng như lãnh đạo công ty.
                                        </span></span></p>
                                <p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Khách hàng của chúng tôi:</span></span></p>

                                <div style="text-align:center">
                                <figure class="image" style="display:inline-block"><img alt="" height="545" src="https://www.hoanmysaigonclinic.com/upload/hoanmysaigonclinic.com/Khach%20hang.jpg" width="1000" />
                                <figcaption><em>...Và hơn 100 cơ quan/doanh nghiệp luôn tin tưởng lựa chọn khám sức khỏe hằng năm tại Phòng Khám Đa Khoa Hoàn Mỹ Sài Gòn.</em></figcaption>
                                </figure>
                                </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    </body>
</html>
