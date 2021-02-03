<%--
  Created by IntelliJ IDEA.
  User: TRAM ANH LAPTOP
  Date: 1/28/2021
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <style>
      #head{
        width: 100%;
        height: 160px;
        background-color: #555555;
        position: fixed;
        z-index: 9;
      }
      #head_top{
        width: 100%;
        height: 100px;
        background-color: #CDCDCD;
        position: absolute;
      }
      #head_top a{
        margin-top: 20px;
        float: left;
      }
      #head_top p{
        color: red;
        margin-top: 30px;
        float: right;
        margin-right: 30px;
      }
      #headbottom{
        width: 100%;
        position: absolute;
        top: 100px;
      }
      #content{
        position: relative;
        top: 160px;
      }
      #footer{
        text-align: center;
        padding-top: 40px;
        background-color: dodgerblue;
        width: 100%;
        height: 100px;
        position: relative;
        top: 160px;
      }
      #footer label{
        color: blue;
      }
    </style>
  </head>
  <body>
  <div id="head">
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
              <a class="nav-link" href="/employees">Employee <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="/customer">Customer <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="/services">Service <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="/contracts">Contract <span class="sr-only">(current)</span></a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    </div>
  </div>
  <div id="content">
    <div id="demo" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
        <li data-target="#demo" data-slide-to="4"></li>
      </ul>

      <!-- The slideshow -->
      <div class="carousel-inner data-interval='1000'">
        <div class="carousel-item active">
          <img src="img/anhnen.jpg" alt="" width="100%" height="100%">
        </div>
        <div class="carousel-item">
          <img src="img/images%20(3).jpg" height="100%" width="100%" alt="">
        </div>
        <div class="carousel-item">
          <img src="img/images%20(4).jpg" alt="" width="100%" height="100%">
        </div>
        <div class="carousel-item">
          <img src="img/images%20(5).jpg" alt="" width="100%" height="100%">
        </div>
        <div class="carousel-item">
          <img src="img/images%20(5).jpg" alt="" width="100%" height="100%">
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
  </div>
  <div id="footer">
    <a href="#">
       <label style="background-color: dodgerblue">Welcome</label>
    </a>
  </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
          integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</html>
