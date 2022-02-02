 <html>
<body>
<h4 role="alert"  style="color: green; text-align: center;">Your Registration is successfull</h4>

</body>
</html>
 <%@ page import="java.sql.*" %>
<%
    String s1,s2,s3;
    int i=0;
    i++;
    Statement st;
    Connection con;
    i=0;
    try
    {
    Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    con=DriverManager.getConnection("jdbc:ucanaccess://C:/accesdb/User-data.accdb");
    st=con.createStatement();
    s1=request.getParameter("name");
    s2=request.getParameter("pass1");

    String s="insert into data1(SR,Username,Password) values('"+i+"','"+s1+"','"+s2+"')";
    st.executeUpdate(s);
    out.println(" <h4 role='alert'  style='color: green; text-align: center;'>Your Registration is successfull</h4>");
    response.sendRedirect("login.html");
    st.close();
    con.close();
    
    }
    catch(Exception e)
    {
    out.println(e);
    }

%>
