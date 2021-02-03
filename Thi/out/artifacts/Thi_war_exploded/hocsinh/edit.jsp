<%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 2/2/2021
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>edit HocSInh</title>
</head>
<body>
<center>
    <h2>
        <a href="/hocsinh">List All HOCSInh</a>
    </h2>
</center>
<div align="center">
    <form method="post" action="/hocsinh">
        <input type="hidden" name="action" value="edit">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit HOCSINH
                </h2>
            </caption>

<%--                <th>ID:</th>--%>
                    <input type="hidden" name="id" size="45"
                           value="<c:out value='${requestScope.hocSinh.id}' />"/>

            <tr>
                <th>ID_TYPE:</th>
                <td>
                    <select name="id_type">
                        <c:forEach items="${hocSinhTypeList}" var="type">
<%--                            <option value="${hocSinhType.id_type}" }>${hocSinhType.name_type}</option>--%>
                            <option value="${type.id_type}" ${type.id_type == hocSinh.id_type ? "selected" : ""}>${type.name_type}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>NAME:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${hocSinh.name}' />"/>
                </td>
            </tr>
            <tr>
                <th>Address</th>
                <td>

                    <input type="text" name="address" size="45"
                           value="<c:out value='${hocSinh.address}' />"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>

                    <input type="text" name="email" size="45"
                           value="<c:out value='${hocSinh.email}' />"/>
                </td>
            </tr>
            <tr>
                <th>Phone:</th>
                <td>

                    <input type="text" name="phone" size="45"
                           value="<c:out value='${hocSinh.phone}' />"/>
                </td>
            </tr>


            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>