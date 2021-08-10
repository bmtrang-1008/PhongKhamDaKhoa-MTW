<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/dash/admin_doctor_list/styles.css" rel="stylesheet" />
    </head>
    <body>
        <h1>Medical Record List</h1>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Diagnostic</th>
                <th>Conclusion</th>
                <th>Code</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.medi}" var="d">  
                <tr>
                    <td>${d.id}</td>
                    <td>${d.name}</td>
                    <td>${d.diag}</td>
                    <td>${d.conclu}</td>
                    <td>${d.code}</td>
                    <td><a href="update?id=${d.id}"><button>Update</button></a></td>  
                </tr>
            </c:forEach>
        </table>

    </body>
</html>