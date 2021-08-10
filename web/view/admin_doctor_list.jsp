<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/dash/admin_doctor_list/styles.css" rel="stylesheet" />
    </head>
    <body>
        <h1>Doctor List</h1>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Experience Year</th>
                <th>Feedback</th>
                <th>Update</th>
            </tr>
            <c:forEach items="${requestScope.doctors}" var="d">  
                <tr>
                    <td>${d.user.id}</td>
                    <td>${d.user.full_name}</td>
                    <td>${d.user.phone}</td>
                    <td>${d.user.email}</td>
                    <td>
                        <c:choose>
                            <c:when test="${d.user.gender}">
                                Male
                            </c:when>
                            <c:otherwise>
                                Female
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>${d.exp_year}</td>
                    <td><a href="feedback?url=admin&service=view&doctor_id=${d.user.id}"><button>Feedbacks</button></a></td>
                    <td><a href="DoctorUpdate?did=${d.user.id}"><button>Update</button></a></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>