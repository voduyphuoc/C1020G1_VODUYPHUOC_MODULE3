<%@ page import="controller.ListCustomer" %><%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 1/21/2021
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@    taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
<%
    request.setAttribute("customer", ListCustomer.getCustomerList());
%>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">DayOfBirth</th>
        <th scope="col">Address</th>
        <th scope="col">Image</th>
    </tr>
    </thead>
    <c:forEach items="${customer}" var="customerList">
        <tbody>
        <tr>
            <td><c:out value="${customerList.name}"/></td>
            <td><c:out value="${customerList.dayOfBirth}"/></td>
            <td><c:out value="${customerList.address}"/></td>
            <td><img src="<c:out value="${customerList.image}"/>" height="50px" width="50" alt="Ảnh Lỗi"></td>
        </tr>
        </tbody>
    </c:forEach>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
</html>
