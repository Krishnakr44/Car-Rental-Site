<!DOCTYPE html>
<form method=get action=wel>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
</head>
<body>
 
  <h2>you logout successfully</h2>
  <%
 //request.getSession();
 session.invalidate(); 
 response.sendRedirect("project1.html");
 
  %>
</body>
</html>