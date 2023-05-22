package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.OrderForm;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.OrderFacade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GetAllOrdersServlet", value = "/getorderbyuser")
public class GetOrderByUser extends HttpServlet {
    private ConnectionPool connectionPool;
    @Override
    public void init() throws ServletException
    {
        this.connectionPool = ApplicationStart.getConnectionPool();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<OrderForm> orderList = OrderFacade.getOrderByUser(connectionPool);
            request.setAttribute("orders", orderList);
            request.getRequestDispatcher("/WEB-INF/getorderbyuser.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Failed to retrieve orders.", e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}