<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/dash/admin_doctor_list/styles.css" rel="stylesheet" />
    </head>
    <body>
        <h1>Doctor Feedback List</h1>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Doctor</th>
                <th>Patient/User</th>
                <th>Feedback</th>
                <th>Rate</th>
                <th>Date Created</th>
            </tr>
            <c:forEach items="${requestScope.feedbacks}" var="d">  
                <tr>
                    <td>${d.id}</td>
                    <td>${d.doctor.user.full_name}</td>
                    <td>${d.user.full_name}</td>
                    <td>${d.feedback}</td>
                    <td>
                        ${d.rate}
                    </td>
                    <td>${d.date_created}</td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>