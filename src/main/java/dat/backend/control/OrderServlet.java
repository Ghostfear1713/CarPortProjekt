package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.UserFacade;
import dat.backend.model.persistence.OrderFacade;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    private ConnectionPool connectionPool;

    @Override
    public void init() throws ServletException
    {
        this.connectionPool = ApplicationStart.getConnectionPool();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        int step = 1;
        try {
            //get current step fra request, gemmes i session
            //-> getPageAndForward for at vise den rette side
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
        request.setCharacterEncoding("UTF-8");
        OrderForm orderForm;
        HttpSession session = request.getSession();
        int step = Integer.parseInt(request.getParameter("step"));


        if (session.getAttribute("orderForm") == null)
        {
            orderForm = new OrderForm();
        } else {
            orderForm = (OrderForm) session.getAttribute("orderForm");
        }
        try {


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
                case 4:
                    String navn = request.getParameter("name");
                    String adresse = request.getParameter("adresse");
                    int postnummer = Integer.parseInt(request.getParameter("postnummer"));
                    String by = request.getParameter("by");
                    String telefonnummer = request.getParameter("tlf");
                    String email = request.getParameter("email");

                    //sætter vores variabler ind i objektet
                    orderForm.setNavn(navn);
                    orderForm.setAdresse(adresse);
                    orderForm.setPostnummer(postnummer);
                    orderForm.setBy(by);
                    orderForm.setTelefonnummer(telefonnummer);
                    orderForm.setEmail(email);
                    break;
                case 5:
                    User user = (User)session.getAttribute("user");
                    //Gem ordre + brugerinfo i databasen
                    UserFacade.updateUserInfo(user, orderForm, connectionPool);
                    OrderFacade.insertOrder(user, orderForm, connectionPool);
                    break;
                default:
                    break;
            }
        } catch (NumberFormatException e) {
            doGet(request, response);
        } catch (DatabaseException e) {
            throw new RuntimeException(e);
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
            case 5: page = "order5.jsp"; break;
            default: page = "order1.jsp"; break;
        }

        request.getRequestDispatcher("WEB-INF/" + page).forward(request, response);
    }
}
