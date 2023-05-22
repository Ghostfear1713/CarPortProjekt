package dat.backend.control;

import dat.backend.model.services.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ViewItemListServlet", value = "/viewitemlist")
public class ViewItemListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Calculator calculator = new Calculator();
        calculator.calcCarport(780, 600);
        request.setAttribute("itemList", calculator.getItemList().getItemList());
        request.getRequestDispatcher("WEB-INF/viewItemList.jsp").forward(request, response);
    }
}
