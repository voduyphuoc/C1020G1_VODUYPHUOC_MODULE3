<%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 1/25/2021
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to products list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="text" name="id" id="id" value="${requestScope["products"].getId()}"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["products"].getName()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price" value="${requestScope["products"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description : </td>
                <td><input type="text" name="description" id="description" value="${requestScope["products"].getDescription}"></td>
            </tr>
            <tr>
                <td>Producer</td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["products"].getProducer}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
