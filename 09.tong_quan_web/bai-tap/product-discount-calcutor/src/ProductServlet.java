import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductServlet",urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("ProductDescription");
        float ListPrice = Float.parseFloat(request.getParameter("ListPrice"));
        float DiscountPercent = Float.parseFloat(request.getParameter("DiscountPercent"));
        double DiscountAmount = ListPrice*DiscountPercent*0.01;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>product Description:" + productDescription + "</h1>");
        writer.println("<h1> Discount Amount :" + DiscountAmount + "</h1>");
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
