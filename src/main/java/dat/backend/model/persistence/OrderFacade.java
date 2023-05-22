package dat.backend.model.persistence;

import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.SQLException;
import java.util.List;

public class OrderFacade {

    public static void insertOrder(User user, OrderForm orderForm, ConnectionPool connectionPool) throws DatabaseException {
        OrderMapper.insertOrder(user, orderForm, connectionPool);
    }

    public static List<OrderForm> getAllOrders(ConnectionPool connectionPool) throws DatabaseException, SQLException {
        OrderMapper.getAllOrders(connectionPool);
        return null;
    }

    public static List<OrderForm> getOrderByUser(ConnectionPool connectionPool) throws DatabaseException, SQLException {
        OrderMapper.getOrderByUser(connectionPool);
        return null;
    }
}