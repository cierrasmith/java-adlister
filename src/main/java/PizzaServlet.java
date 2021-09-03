import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaServlet", value = "/pizza-order")
public class PizzaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/pizza.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String crust = request.getParameter("crustType");
        String sauce = request.getParameter("sauceType");
        String size = request.getParameter("pizzaSize");
//        String toppings = request.getParameter("pizzaSize");
        String address = request.getParameter("inputAddress");

        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);
        System.out.println(address);
    }



}



