<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
  integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>OWNCAR</title>

  <style>
    body {
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

      background-color: #0d48a1ec;
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      position: sticky;
      top: 0;
    }


    .h1 {
      
      display: block;
      background-color: #1e88e5bf;
      color: rgb(19, 19, 51);
      font-family: verdana;
      font-size: 230%;
      text-align: center;
      font-weight:bold;
    }

    .p {
      display: block;
      text-align: center;
      color: rgb(47, 5, 95);
      font-size: 160%;
    }

    .f1 {
      position: absolute;
      bottom: -250px;
      background-color: rgb(7 7 77 / 84%);
    border: 1px solid #0b0b24;

    }

    table td {
      color: aliceblue;
      width: 30%;
    }
    table tr{
      text-align: center;
      color: aliceblue;
    }
    .last {
      text-align: center;
    color: black;
    font-size: 20px;
    font-weight: bold;
    }
  </style>


</head>

<body>


  <!-- <div class="nav"> -->
  <ul>
    <li><a class="active" href="#">Home</a></li>
    <li><a href="./car.html">Car</a></li>
    <li><a href="contact.html">Contact</a></li>
    <li><a href="about.html">About</a></li>
    <li style="float:right"><a href="logout.jsp">Logout</a></li>
    <li style="float:right"><a href="adminlogin.html">Admin</a></li>
  </ul>
  <!-- </div> -->
  <%  
String s1=(String)session.getAttribute("name12");
  //out.println("<h2>"+s1+"</h2>");

%>
  <h3 class="h1">Welcome , <%=s1%> to car rentle site</h3>
  <p class="h2 p">70% off on your first booking</p>





  <footer class="f1">
    <div>
      <table>
        <tr>
          <td>
            <h4>Owncar</h4>
          </td>
          <td>
            <h4>Top Rated Driver</h4>
          </td>
          <td>
            <h4>Benifits</h4>
          </td>
        </tr>
        <tr>
          <td>
            <p>
              Owncar is car or cab booking site.Book your car to enjoy persenol ride.Easy to book and easy to get booked
              car.
            </p>
          </td>
          <td>
            <p>
              All our driver-partners are
              background verified and trained to
              deliver only the best experience
            </p>
          </td>
          <td>
            <p>1. Users can book anywhere</p>
            <p>2. Payment on delivery</p>
            <p>3. 24x7 Custmere care</p>
          </td>
        </tr>
      </table>
    </div>
    <div class="last">&copy; 2020 Owncar</div>
  </footer>

</body>

</html>