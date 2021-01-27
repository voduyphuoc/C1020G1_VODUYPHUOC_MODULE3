<%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 1/26/2021
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Print List Product</title>
</head>
<body>
<form name="action" method="get">
    <input type="submit" value="Search">
    <input type="text" name="search">
    <table>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Price</td>
            <td>Description</td>
            <td>Producer</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items='${requestScope["product"]}' var="product">
            <tr>
                <td><a href="/product?action=view&id=${product.getId()}">${product.getId()}</a></td>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescription()}</td>
                <td>${product.getProducer()}</td>
                <td><a href="/product?action=edit&id=${product.getId()}">edit</a></td>
                <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
