package dat.backend.model.persistence;

import dat.backend.model.entities.OrderForm;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

class UserMapper
{
    static User login(String username, String password, ConnectionPool connectionPool) throws DatabaseException
    {
        Logger.getLogger("web").log(Level.INFO, "");

        User user = null;

        String sql = "SELECT * FROM user WHERE username = ? AND password = ?";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setString(1, username);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                if (rs.next())
                {
                    String role = rs.getString("role");
                    user = new User(username, password, role);
                } else
                {
                    throw new DatabaseException("Wrong username or password");
                }
            }
        } catch (SQLException ex)
        {
            throw new DatabaseException(ex, "Error logging in. Something went wrong with the database");
        }
        return user;
    }

    static User createUser(String username, String password, String role, ConnectionPool connectionPool) throws DatabaseException
    {
        Logger.getLogger("web").log(Level.INFO, "");
        User user;
        String sql = "insert into user (username, password, role) values (?,?,?)";
        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, role);
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected == 1)
                {
                    user = new User(username, password, role);
                } else
                {
                    throw new DatabaseException("The user with username = " + username + " could not be inserted into the database");
                }
            }
        }
        catch (SQLException ex)
        {
            throw new DatabaseException(ex, "Could not insert username into database");
        }
        return user;
    }

    static ArrayList<User> getAllUsers(ConnectionPool connectionPool) {
        ArrayList<User> userList = new ArrayList<>();
        try {

            Connection connection = connectionPool.getConnection();

            String sql = "SELECT * FROM user";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){
                String name = rs.getString("username");
                String password = rs.getString("password");
                String role = rs.getString("role");

                User user = new User(name, password, role);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    static void updateUserInfo(User user, OrderForm orderForm, ConnectionPool connectionPool) throws DatabaseException
    {
        Logger.getLogger("web").log(Level.INFO, "");
        String sql = "update user SET name = ?, phone_number = ?, address=?, email=?, zip=?  WHERE username = ?";
        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setString(1, orderForm.getNavn());
                ps.setString(2, orderForm.getTelefonnummer());
                ps.setString(3, orderForm.getAdresse());
                ps.setString(4, orderForm.getEmail());
                ps.setInt(5, orderForm.getPostnummer());
                ps.setString(6, user.getUsername());
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected != 1)
                {
                    throw new DatabaseException("The user with username = " + user.getUsername() + " could not be updated in db");
                }
            }
        }
        catch (SQLException ex)
        {
            throw new DatabaseException(ex, "FEJL");
        }
    }

    static User getUserByID(String username, ConnectionPool connectionPool) throws DatabaseException {

    String sql ="SELECT * FROM user WHERE username = ?";
    User user = null;

    try(Connection connection = connectionPool.getConnection()){
        try(PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, username);
                try(ResultSet resultSet = ps.executeQuery()) {
                if(resultSet.next()){
                String usernameDB = resultSet.getString("username");
                String phoneNumber = resultSet.getString("phone_number");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");

                user = new User(usernameDB, phoneNumber, name, address, email);
                }
             }
        }
    } catch (SQLException e) {
        throw new DatabaseException(e, "Fejl i databasen");
    }

    return user;
    }












}
