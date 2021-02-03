<%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 2/3/2021
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <style>
        #head {
            width: 100%;
            height: 160px;
            background-color: #555555;
            position: fixed;
            z-index: 9;
        }
        #head_top {
            width: 100%;
            height: 100px;
            background-color: #CDCDCD;
            position: absolute;
        }
        #head_top a {
            margin-top: 20px;
            float: left;
        }
        #head_top p {
            color: red;
            margin-top: 30px;
            float: right;
            margin-right: 30px;
        }
        #headbottom {
            width: 100%;
            position: absolute;
            top: 100px;
        }
        #content {
            position: relative;
            top: 160px;
        }
        #footer {
            text-align: center;
            padding-top: 40px;
            background-color: burlywood;
            width: 100%;
            height: 100px;
            position: relative;
            top: 160px;
        }
        #footer label {
            color: blue;
        }
    </style>
</head>
<body>
<div id="content">
    <center>
        <h1>HOC SiNh <c:out value="${name}"/></h1>
        <h2>
            <a href="/hocsinh">List All HOCSInh</a>
        </h2>
    </center>
    <table class="table table-striped" id="tableHocSinh">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">TYPE ID</th>
            <th scope="col">NAME</th>
            <th scope="col">ADDRESS</th>
            <th scope="col">EMAIL</th>
            <th scope="col">PHONE</th>
            <th scope="col">EDIT</th>
            <th scope="col">DELETE</th>

        </thead>
        <tbody>
        <c:forEach items="${requestScope.hocSinhList}" var="hocSinh">
            <tr>
                <td><c:out value="${hocSinh.id}"/></td>
                <td><c:out value="${hocSinh.id_type}"/></td>
                <td><c:out value="${hocSinh.name}"/></td>
                <td><c:out value="${hocSinh.address}"/></td>
                <td><c:out value="${hocSinh.email}"/></td>
                <td><c:out value="${hocSinh.phone}"/></td>
                <td>
                    <a href="/hocsinh?action=edit&id=${hocSinh.id}" class="btn btn-primary">Edit</a>
                </td>
                <td>

                    <button type="button" class="btn btn-danger" onclick="getId('${hocSinh.id}')"
                            data-toggle="modal" data-target="#modelDeleteHocSinh">Delete</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="modal fade" id="modelDeleteHocSinh" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Customer</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="get" action="/hocsinh">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="customerId" id="idHocSinh">
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
    function getId(id) {
        $('#idHocSinh').val(id);
    }
    $(document).ready(function () {
        $('#tableHocSinh').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</html>
