package dat.backend.model.persistence;

import dat.backend.model.entities.Item;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

class ItemMapper {
public static List<Item> getAllItems (ConnectionPool connectionPool) throws DatabaseException {
    List<Item> itemList = new ArrayList<>();

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = connectionPool.getConnection();
        PreparedStatement stmt = connection.prepareStatement("SELECT * FROM material");
        ResultSet rs = stmt.executeQuery();
        while(rs.next()){
            Item item = new Item();
        item.setItemId(rs.getInt("id_material"));
        item.setMaterialDescription(rs.getString("description"));
        item.setLength(rs.getInt(""));
        item.setQuantity(rs.getInt(""));
        item.setUnit(rs.getString(""));
        item.setGuidanceDescription(rs.getString(""));

        itemList.add(item);
        }


    } catch (Exception e) {
        e.printStackTrace();
    }

    return itemList;
}




}
