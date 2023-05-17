package dat.backend.model.persistence;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderMapper {

    public static void insertOrder(User user, OrderForm orderForm, ConnectionPool connectionPool) throws DatabaseException {
        Logger.getLogger("web").log(Level.INFO, "");

        String sql = "insert into orders (carlength, carwidth, carroof, redwidth, redlength, total_amount) values (?,?,?)";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, orderForm.getLængde());
                ps.setInt(2, orderForm.getBredde());
                ps.setString(3, orderForm.getTag());
                ps.setInt(4, orderForm.getRedbredde());
                ps.setInt(5, orderForm.getRedlength());
                ps.setDouble(6, orderForm.getAmount());
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected == 1) {
                    user = new User(user.getUsername(), user.getPassword(), user.getRole());
                } else {
                    throw new DatabaseException("The user with username = " + user.getUsername() + " could not be inserted into the database");
                }
            }
        } catch (SQLException ex) {
            throw new DatabaseException(ex, "Could not insert username into database");

        }
    }
    static List<OrderForm> getAllOrders(ConnectionPool connectionPool) throws DatabaseException {
        List<OrderForm> orderList = new ArrayList<>();
        try {

            Connection connection = connectionPool.getConnection();

            String sql = "SELECT * FROM orders";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String idOrders = rs.getString("id_orders");
                String username = rs.getString("username");
                String carlength = rs.getString("carlength");
                String carwidth = rs.getString("carwidth");
                String carroof = rs.getString("carroof");
                String redwidth = rs.getString("redwidth");
                String redlength = rs.getString("redlength");
                int total_amount = rs.getInt("total_amount");


                OrderForm order = new OrderForm(idOrders, username, carlength, carwidth, carroof, redwidth, redlength,total_amount);
                orderList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }
}
