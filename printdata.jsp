<!DOCTYPE html>
<html>
<head>
<style>
 body {
   /* background-image:url(637178.jpg);
   opacity:.5; */
    background-color: rgb(168, 238, 128);
  }
table, th, td {

   border: 1px solid black;
  border-collapse: collapse;
}
.center {
 width: 100%
  

}
tr, th {
width:20%
padding: 5px;
 text-align: left;
}
</style>
</head>
<body>
  
<table class="center" >
  <caption><h1 style="color: brown;">User-Data</h1></caption>
  <tr style="width: 100%;" >
    <th style='width:20%  ';>SR</th>
    <th style='width:20% ';>Username</th>
    <th style='width:20% ';>Password</th>
  </tr>
</table>
<br>
<br>

</body>
</html>

<%@ page import="java.sql.*" %>
<%
String s1,s2,s3;
Statement st;
Connection con;
int i;
i=0;
try
{
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
con=DriverManager.getConnection("jdbc:ucanaccess://C:/accesdb/User-data.accdb");
st=con.createStatement();
String s="select * from data1";
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
i++;
s1=rs.getString("SR");
s2=rs.getString("Username");
s3=rs.getString("Password");
//out.println("&nbsp&nbsp"+s1+"&nbsp&nbsp&nbsp &nbsp &nbsp&nbsp"+s2+"&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp&nbsp"+s3);
      
      
     
out.println("<table style='width:100%'  >");
out.println("<tr style='width:100%'  >");
out.println("<th style='width:20%' >"+s1+"</th>");
out.println("<th style='width:20%' >"+s2+"</th>");
out.println("<th style='width:20%' >"+s3+"</th></tr>");
out.println("</table>");



out.println("<br>");
}
st.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>


