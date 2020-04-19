package testCNX;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class session
 */
@WebServlet("/session")
public class session extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public session() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	   
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 response.setContentType("text/html");

	        try {
	            String idToken = request.getParameter("id_token");
	            GoogleIdToken.Payload payLoad = IdTokenVerifierAndParser.getPayload(idToken);
	            String name = (String) payLoad.get("name");
	            String email = payLoad.getEmail();

	            HttpSession session = request.getSession(true);
	            session.setAttribute("userName", name);
	            request.getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);

	        } catch (Exception e) {
	            throw new RuntimeException(e);
	        }
	}

}
