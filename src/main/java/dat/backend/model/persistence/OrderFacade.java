package dat.backend.model.persistence;

import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.util.List;

public class OrderFacade {

    public static void insertOrder(User user, OrderForm orderForm, ConnectionPool connectionPool) throws DatabaseException {
        OrderMapper.insertOrder(user, orderForm, connectionPool);
    }

    public static List<OrderForm> getAllOrders(ConnectionPool connectionPool) throws DatabaseException {
        OrderMapper.getAllOrders(connectionPool);
        return null;
    }
}
