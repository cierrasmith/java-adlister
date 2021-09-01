import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/count")
public class PageViewCounterServlet extends HttpServlet {

    private int pageCount;

    public void init() {
        pageCount = 0;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String reset = request.getParameter("reset");
        pageCount++;

        if(reset != null && reset.equals("letsreset")) {
            pageCount = 0;
        }

        out.println("This page has been viewed " + pageCount + " time(s).");
    }
}
