package dat.backend.control;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        int step = 1;
        try {
            step = Integer.parseInt(request.getParameter("step"));
        } catch (NumberFormatException e)
        {
            step = 1;
        }
        session.setAttribute("step", step);

        String page;
        switch (step)
        {
            case 1: page = "order1.jsp"; break;
            case 2: page = "order2.jsp"; break;
            default: page = "order1.jsp"; break;
        }

        request.getRequestDispatcher("WEB-INF/" + page).forward(request, response);

    //TODO lav et tjek på om man er logget ind
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
