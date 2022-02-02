import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class myresponse extends HttpServlet 
{
    String s,n2;
    int result,ni2;

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
{
        PrintWriter p = res.getWriter();
        s=req.getParameter("name");
        
	n2=req.getParameter("days");
	
	ni2=Integer.parseInt(n2);
	result=400*ni2;
	p.println("<html> <body> <h1 style={text-align:center}> Welcome " +s+ "</h1>");
	
        p.println("<p>Your car      : BMW T05S</p>");
        
        p.println("<p>Total days    :"+ni2+"</p>");
        p.println("<p>Car Type      :Two-seater</p>");
        p.println("<p>Total amount  : "+result+"</p>");
        p.println("<p>Thank you... Visit again..</p>");
	p.println("</body></html>");
 }
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        
    }
}