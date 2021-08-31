import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/count")
public class PageViewCounterServlet extends HttpServlet {

    private int pageCount;

    public void init() {
        pageCount = 0;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        pageCount++;

        response.getWriter().println("This page has been viewed " + pageCount + " time(s).");
    }
}
