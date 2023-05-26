package dat.backend.model.persistence;


import dat.backend.model.entities.Item;
import dat.backend.model.exceptions.DatabaseException;

import java.util.List;

public class ItemFacade {

    public static List<Item> getAllItems(ConnectionPool connectionPool) throws DatabaseException {
    return ItemMapper.getAllItems(connectionPool);
    }



}
