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

        String sql = "insert into orders (carlength, carwidth, carroof, redwidth, redlength, total_amount, username) values (?,?,?,?,?,?,?)";
        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, orderForm.getLængde());
                ps.setInt(2, orderForm.getBredde());
                ps.setString(3, orderForm.getTag());
                ps.setInt(4, orderForm.getRedbredde());
                ps.setInt(5, orderForm.getRedlength());
                ps.setDouble(6, orderForm.getAmount());
                ps.setString(7, user.getUsername());


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

    public static List<OrderForm> getAllOrders(ConnectionPool connectionPool) throws SQLException {
        List<OrderForm> orders = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = connectionPool.getConnection();
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM orders");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                OrderForm order = new OrderForm();
                order.setLængde(rs.getInt("længde"));
                order.setBredde(rs.getInt("bredde"));
                order.setTag(rs.getString("tag"));
                order.setRedlength(rs.getInt("redlength"));
                order.setRedbredde(rs.getInt("redbredde"));
                order.setNavn(rs.getString("navn"));
                order.setAdresse(rs.getString("adresse"));
                order.setPostnummer(rs.getInt("postnummer"));
                order.setBy(rs.getString("by"));
                order.setTelefonnummer(rs.getString("telefonnummer"));
                order.setEmail(rs.getString("email"));
                order.setAmount(rs.getDouble("amount"));

                orders.add(order);
            }

            rs.close();
            stmt.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return orders;
    }
    public static List<OrderForm> getOrderByUser(ConnectionPool connectionPool) {
        List<OrderForm> orders = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = connectionPool.getConnection();
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM carport.orders WHERE username = (orhan)");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                OrderForm order = new OrderForm();
                order.setLængde(rs.getInt("længde"));
                order.setBredde(rs.getInt("bredde"));
                order.setTag(rs.getString("tag"));
                order.setRedlength(rs.getInt("redlength"));
                order.setRedbredde(rs.getInt("redbredde"));
                order.setNavn(rs.getString("navn"));
                order.setAdresse(rs.getString("adresse"));
                order.setPostnummer(rs.getInt("postnummer"));
                order.setBy(rs.getString("by"));
                order.setTelefonnummer(rs.getString("telefonnummer"));
                order.setEmail(rs.getString("email"));
                order.setAmount(rs.getDouble("amount"));

                orders.add(order);
            }

            rs.close();
            stmt.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return orders;
    }
}
