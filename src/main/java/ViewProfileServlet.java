import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession currentSession = request.getSession();

//        boolean isLoggedIn = (boolean) currentSession.getAttribute("loggedIn");


        if(currentSession.getAttribute("loggedIn") != null) {

            if (currentSession.getAttribute("currentUser") != null) {
                User currentUser = (User) currentSession.getAttribute("currentUser");
                request.setAttribute("currentUser", currentUser);
            }
        } else {
            response.sendRedirect("/login");
        }

        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    }
}
