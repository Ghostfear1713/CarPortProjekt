package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.OrderForm;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.OrderFacade;
import dat.backend.model.services.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ViewItemListServlet", value = "/viewitemlist")
public class ViewItemListServlet extends HttpServlet {

    private static ConnectionPool connectionPool = ApplicationStart.getConnectionPool();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("id"));
        OrderForm order = OrderFacade.getOrderById(orderId, connectionPool);
        Calculator calculator = null;
        try {
            calculator = new Calculator(connectionPool);
        } catch (DatabaseException e) {
            request.setAttribute("errormessage", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        calculator.calcCarport(order.getLængde(), order.getBredde());
        request.setAttribute("itemList", calculator.getItemList());
        request.getRequestDispatcher("WEB-INF/viewItemList.jsp").forward(request, response);
    }
}
