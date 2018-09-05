package forwardandredirect;

import java.io.IOException;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import helper.User;

//-Redirect will send a HTTP 302 response instructing the browser to perform a new GET request to the specified URL.
//-To do this, we use the sendRedirect() belonging to the HttpServletResponse interface:
//		response.sendRedirect("https://www.google.com");
//-This is useful when we want to send the user to a different domain or server outside of our web application.
//-The drawback is that we lose the original request along with its parameters and attributes.

@WebServlet("/redirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int phone = ThreadLocalRandom.current().nextInt(10000000);
		User user = new User("Jane", "Doe", "Boston", String.valueOf(phone));
		
		HttpSession session = request.getSession(true);
		session.setAttribute("user", user);
		
		//Doesnt work if redirected to page with request scoped bean
		response.sendRedirect("form/formActionSessionScoped.jsp");
		
		
		//curl -i http://localhost:8080/TestJSP/redirectServlet
		//HTTP/1.1 302 Found
		//Server: Payara Server  5.182 #badassfish
		//X-Powered-By: Servlet/4.0 JSP/2.3 (Payara Server  5.182 #badassfish Java/Oracle Corporation/1.8)
		//Set-Cookie: JSESSIONID=111115d66bd26021861f19502a80; Path=/TestJSP; HttpOnly
		//Location: http://localhost:8080/TestJSP/form/formAction.jsp
		//Content-Language: pl-PL
		//Content-Type: text/html;charset=ISO-8859-2
		//Content-Length: 199
		//X-Frame-Options: SAMEORIGIN

		//<html>
		//<head><title>Document moved</title></head>
		//<body><h1>Document moved</h1>
		//This document has moved <a href="http://localhost:8080/TestJSP/form/formAction.jsp">here</a>.<p>
		//</body>
		//</html>
		
	}
	

}
