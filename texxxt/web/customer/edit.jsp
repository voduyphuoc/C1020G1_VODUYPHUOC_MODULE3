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
    <title>edit customer</title>
</head>
<body>
<center>
    <h2>
        <a href="/customer">List All Customer</a>
    </h2>
</center>
<div align="center">
    <form method="post" action="/customer">
        <input type="hidden" name="action" value="edit">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Customer
                </h2>
            </caption>

            <tr>
                <th>ID:</th>
                <td>
                    <input type="text" name="customerId" size="45"
                           value="<c:out value='${customer.customer_id}' />" readonly/>
                </td>
            </tr>
            <tr>
                <th>TypeId:</th>
<%--                <td>--%>
<%--                    <select name="typeId">--%>
<%--                        <c:forEach items="${customerType}" var="type">--%>
<%--                            <option value="${type.id}" ${type.id == customer.customer_type_id ? "selected" : ""}>${type.name}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                </td>--%>
            </tr>
            <tr>
                <th>name:</th>
                <td>
                    <input type="text" name="customerName" size="45"
                           value="<c:out value='${customer.customer_name}'/>"/>
                </td>
            </tr>
            <tr>
                <th>birthday:</th>
                <td>
                    <input type="date" name="birthday" size="45"
                           value="<c:out value='${customer.customer_birthday}' />"/>
                </td>
            </tr>
            <tr>
                <th>gender:</th>
                <td>

                    <select name="gender">

                        <option value="0" ${customer.customer_gender == 0 ? 'selected':''}>nu</option>
                        <option value="1" ${customer.customer_gender == 1 ? 'selected':''}>nam</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>IdCard:</th>
                <td>

                    <input type="text" name="idCard" size="45"
                           value="<c:out value='${customer.customer_cmnd}' />"/>
                </td>
            </tr>
            <tr>
                <th>phone:</th>
                <td>

                    <input type="text" name="phone" size="45"
                           value="<c:out value='${customer.customer_phone}' />"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>

                    <input type="text" name="email" size="45"
                           value="<c:out value='${customer.customer_email}' />"/>
                </td>
            </tr>
            <tr>
                <th>address:</th>
                <td>
                    <input type="text" name="address" size="45"
                           value="<c:out value='${customer.customer_address}' />"/>
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