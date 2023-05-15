package dat.backend.model.persistence;

import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

public class OrderFacade {

    public static void insertOrder(User user, OrderForm orderForm, ConnectionPool connectionPool) throws DatabaseException {
        Ordermapper.insertOrder(user, orderForm, connectionPool);
    }
}
