package dat.backend.control;

import dat.backend.model.entities.OrderForm;

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

        getPageAndForward(request, response, step);

        //TODO lav et tjek på om man er logget ind
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderForm orderForm;
        HttpSession session = request.getSession();
        int step = Integer.parseInt(request.getParameter("step"));

        if (session.getAttribute("orderForm") == null)
        {
            orderForm = new OrderForm();
        } else {
            orderForm = (OrderForm) session.getAttribute("orderForm");
        }

        switch (step) {
            case 2:
                int bredde = Integer.parseInt(request.getParameter("bredde"));
                int længde = Integer.parseInt(request.getParameter("length"));
                String tag = request.getParameter("tag");

                //sætter vores variabler ind i objektet
                orderForm.setBredde(bredde);
                orderForm.setLængde(længde);
                orderForm.setTag(tag);
                break;
            case 3:
                int redbredde = Integer.parseInt(request.getParameter("redbredde"));
                int redlength = Integer.parseInt(request.getParameter("redlength"));

                //sætter vores variabler ind i objektet
                orderForm.setRedbredde(redbredde);
                orderForm.setRedlength(redlength);
                break;
            /*case 4:
                break;*/
            default: break;
        }

        session.setAttribute("orderForm", orderForm);



        session.setAttribute("step", step);
        getPageAndForward(request, response, step);

    }

    private void getPageAndForward(HttpServletRequest request, HttpServletResponse response, int step) throws ServletException, IOException {
        String page;
        switch (step)
        {
            case 1: page = "order1.jsp"; break;
            case 2: page = "order2.jsp"; break;
            case 3: page = "order3.jsp"; break;
            case 4: page = "order4.jsp"; break;
            default: page = "order1.jsp"; break;
        }

        request.getRequestDispatcher("WEB-INF/" + page).forward(request, response);
    }
}
