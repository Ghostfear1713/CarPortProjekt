package dat.backend.model.persistence;

import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;

import java.util.ArrayList;

<<<<<<< Updated upstream
public class UserFacade
{
    public static User login(String username, String password, ConnectionPool connectionPool) throws DatabaseException
    {
=======
public class UserFacade {
    public static User login(String username, String password, ConnectionPool connectionPool) throws DatabaseException {
>>>>>>> Stashed changes
        return UserMapper.login(username, password, connectionPool);
    }

    public static User createUser(String username, String password, String role, ConnectionPool connectionPool) throws DatabaseException {
        return UserMapper.createUser(username, password, role, connectionPool);
    }

    public static ArrayList<User> getAllUser(ConnectionPool connectionPool) throws DatabaseException {
        return UserMapper.getAllUsers(connectionPool);
    }

<<<<<<< Updated upstream

}
=======
}
>>>>>>> Stashed changes
