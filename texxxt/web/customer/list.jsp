<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
<div id="head">
    <div id="head_top">
        <a href="#">
        </a>
    </div>
    <div id="headbottom">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/"><h4 style="color: red">Home</h4></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul id="abc" class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/employee">Employee <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/customer">Customer <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/service">Service <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/contract">Contract <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" method="get">
                    <input type="hidden" name="action" value="search">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="customerName">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>
</div>
<div id="content">
    <center>
        <h1>Customer Manager</h1>
        <h2>
            <a href="/customer?action=create">Add New Customer</a>
        </h2>
    </center>
        <table class="table table-striped" id="tableCustomer">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">TYPE ID</th>
            <th scope="col">NAME</th>
            <th scope="col">BIRTHDAY</th>
            <th scope="col">GENDER</th>
            <th scope="col">ID CARD</th>
            <th scope="col">PHONE</th>
            <th scope="col">EMAIL</th>
            <th scope="col">ADDRESS</th>
            <th scope="col">EDIT</th>
            <th scope="col">DELETE</th>

        </thead>
        <tbody>
        <c:forEach items="${customerList}" var="cus">
            <tr>
                <td><c:out value="${cus.customer_id}"/></td>
                <td><c:out value="${cus.customer_type_id}"/></td>
                <td><c:out value="${cus.customer_name}"/></td>
                <td><c:out value="${cus.customer_birthday}"/></td>
                <td><c:out value="${cus.customer_gender}"/></td>
                <td><c:out value="${cus.customer_cmnd}"/></td>
                <td><c:out value="${cus.customer_phone}"/></td>
                <td><c:out value="${cus.customer_email}"/></td>
                <td><c:out value="${cus.customer_address}"/></td>
                <td>
                    <a href="/customer?action=edit&id=${cus.customer_id}" class="btn btn-primary">Edit</a>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" onclick="getCustomer_id('${cus.customer_id}')"
                            data-toggle="modal" data-target="#modelDeleteCustomer">Delete</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <h2 style="text-align: center;color: yellow">${messageConfig}</h2>
</div>


<div class="modal fade" id="modelDeleteCustomer" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Customer</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="get" action="/customer">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="customer_id" id="idCustomer">
                <div class="modal-body">
                    Are You Sure
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">cancle</button>
                    <button type="submit" class="btn btn-primary">ok</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.23/datatables.min.css"/>

<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.23/datatables.min.js"></script>


<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</html>
