package dat.backend.model.persistence;


import dat.backend.model.entities.Item;
import dat.backend.model.entities.Material;
import dat.backend.model.exceptions.DatabaseException;

import java.util.List;
import java.util.Map;

public class ItemFacade {

    public static Map<Integer, Material> getAllItems(ConnectionPool connectionPool) throws DatabaseException {
     return ItemMapper.getAllItems(connectionPool);
    }



}
