<%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 2/2/2021
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>create customer</title>
</head>
<body>
<center>
    <h2>
        Add New Customer
    </h2>
</center>
<div align="center">
    <form method="post" action="/customer">
        <table border="1" cellpadding="5">
            <tr>
                <th>ID:</th>
                <td>
                    <input  type="text" name="customerId" id="customerId" >
                    <p style="color: red"> </p>
                </td>
            </tr>
            <tr>
                <th>typeId:</th>
                <td>
                    <select name="typeId">
                        <c:forEach items="${customerTypeList}" var="customerType">
                            <option value="${customerType.id}" }>${customerType.name}</option>
                        </c:forEach>
                    </select>

                </td>
            </tr>
            <tr>
                <th>Name:</th>
                <td>
                    <input value="${name}" type="text" name="name" id="name" size="45" required/>
                </td>
            </tr>
            <tr>
                <th>Birthday:</th>
                <td>
                    <input value="${birthday}" type="date" name="birthday" id="birthday" size="45" required/>
                    <p style="color: red">${messageBirthDay}</p>
                </td>

            </tr>
            <tr>
                <th>Gender:</th>
                <td>
                    <select name="gender">
                        <option value="1">nam</option>
                        <option value="0">nu</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>IdCard:</th>
                <td>
                    <input value="${idCard}" type="text" name="idCard" id="idCard" size="45"/>
                    <p style="color: red">${messageIdCard} </p>
                </td>
            </tr>
            <tr>
                <th>Phone:</th>
                <td>
                    <input value="${phone}" type="text" name="phone" id="phone" size="45"/>
                    <p style="color: red ">${messagePhone}</p>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input value="${email}" type="text" name="email" id="email" size="45"/>
                    <p style="color: red">${messageEmail}</p>
                </td>
            </tr>
            <tr>
                <th>Address:</th>
                <td>
                    <input value="${address}" type="text" name="address" id="address" size="45"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="action" value="create"/>
                </td>
            </tr>
        </table>
    </form>
    <h2><a href="/customer">
        back to list customer
    </a></h2>
</div>

</body>
</html>
