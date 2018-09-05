package forwardandredirect;

import java.io.IOException;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import helper.User;

//-When forwarding the URL remains the same!
//-Forwards the request to another resource in our web application. This resource is typically another servlet or JSP page.
//-To do this, we use the forward method belonging to the RequestDispatcher interface.
//		request.getRequestDispatcher("products.jsp").forward(request, response);
//-This approach is faster because everything happens in a single response-request cycle.
@WebServlet("/forwardServlet")
public class ForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int phone = ThreadLocalRandom.current().nextInt(10000000);
		User user = new User("Jane", "Doe", "Boston", String.valueOf(phone));
		
		request.setAttribute("user", user);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("form/formAction.jsp");
		requestDispatcher.forward(request, response);
		
	}
	

}
