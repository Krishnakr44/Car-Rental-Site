<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
</head>
<style>
     body {
      background-image: url("./img/backimg1.jpg");
      background-repeat: no-repeat;
      background-position: center;
      background-attachment: fixed;
      background-size: cover;
      margin: auto;

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
      opacity: 1;
    }
 .d1{
     margin: auto;
     display: block;
     width: 28%;
     background-color: #42a5f5eb;
     margin-top: 18px;
     margin-bottom: 18px;
     padding: 115px;
     border: 2px solid black;

 }
 .d2{
     margin: auto;
    display: block;
     width: 20%;
     background-color: aqua;
     padding: 100px;

 }
  .b1 {

            text-decoration: none;
            background-color: #64b5f6;
            color: rgb(20, 20, 20);
            border: 2px solid #00000026;
            font-size: 30px;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            margin-left: 46%;
            margin-top: 28px;
        }

</style>
<body>
<%
String ss=(String)session.getAttribute("name12");

%>
<h2 style="text-align:center; color:green;">Booked Successfully, <%=ss%></h2>

<div class="d1">
         <h2 style="text-align:center">Payment<h2>
<%@ page import="java.sql.*" %>
<% String s1,s2,s3,s4,s5;
int i=0;
Statement st;
Connection con;
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
con=DriverManager.getConnection("jdbc:ucanaccess://c:/accesdb/User-data.accdb");
st=con.createStatement();
String s="select * from CARINFO";
ResultSet rs=st.executeQuery(s);
s1=(String)session.getAttribute("id");
String days=request.getParameter("day");
int d=Integer.parseInt(days);
while(rs.next())
{
  s2=rs.getString("ID");

if(s2.equals(s1))
{
s3=rs.getString("model");
s4=rs.getString("number");
s5=rs.getString("rent");
out.println("<h4> Rent(per/day)="+s5+"</h4>");
out.println("<h4> Model="+s3+"</h4>");
out.println("<h4> Number="+s4+"</h4>");

int j= Integer.parseInt(s5)*d;
out.println("<h4> Amount="+j+"</h4>");
break;
 
}
}
%>
<a type="button" href="book.jsp" class="b1">Back</a>
<a type="button" href="home.jsp" class="b1">Home</a>

</div>

</body>
</html>

