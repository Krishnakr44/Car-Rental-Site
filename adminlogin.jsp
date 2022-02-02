
<%@ page import="java.sql.*" %>
<% String s1,s2,s3,s4;
Statement st;
Connection con;
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
con=DriverManager.getConnection("jdbc:ucanaccess://c:/accesdb/admin1.accdb");
st=con.createStatement();
String s="select * from Admin";
ResultSet rs=st.executeQuery(s);
s3=request.getParameter("name");
s4=request.getParameter("pass1");
int i=0,j=0,k=0;
while(rs.next())
{
  s1=rs.getString("Name");
  s2=rs.getString("Password");
if(s1.equals(s3) & s2.equals(s4))
{

i++;
j=0;
session.setAttribute("name22",s3);  

//session.setAttribute("name1",s3);
//out.println("<h1>Admin "+s3+"You Welcome"+"</h1>");
response.sendRedirect("adminpage.jsp");

//<jsp:forward page="adminpage.jsp"></jsp:forward>

break;
 
}
if(s1.equals(s3) & !s1.equals(s4))
{
  i++;
  j++;
}

}
if(j>0)
{
  out.println("<h1>You Entered wrong password</h1>");
  //response.sendRedirect("login.html");
 
}
if(i==0)
{
  out.println("<h1> Sorry! You have'nt registered</h1>");
 // response.sendRedirect("signup.html");
}


%>

