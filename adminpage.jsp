
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
 body {
       margin: auto;
      background-image: url("./img/backimg1.jpg");
      background-repeat: no-repeat;
      background-position: center;
      background-attachment: fixed;
      background-size: cover;

    }

    li {
      display: inline;
      float: left;
    }

    a {
      display: block;
      padding: 8px;

    }

    li a {
      font-size: 23px;
      display: block;
      color: white;
      text-align: center;
      padding: 22px 30px;
      text-decoration: none;
    }

    li a:hover {
      background-color: #040d3bc4;
      text-decoration: none;
      color: aliceblue;
    }

    .active {
      background-color: #101432f7;
    }

    ul {

      background-color: #0d47a1cf;
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      position: sticky;
      top: 0;
    }



</style>
<body>

    <div class="d1">
        <ul class="u1">
            <li><a class="active" href="printdata.jsp" >Home</a></li>
            <li><a href="printdata.jsp" >User-Data</a></li>
            <!-- <li><a href="printdata.jsp" >Data</a></li> -->
            <li style="float: right;"><a href="logout.jsp">Logout</a></li>
        </ul>
    </div>
   
    <%
String ss=(String)session.getAttribute("name22");

%>
<h2 style="text-align:center;">Welcome Admin,<%=ss%></h2>

</body>
</html>