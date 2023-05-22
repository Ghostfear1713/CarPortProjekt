package dat.backend.model.persistence;

import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
}
