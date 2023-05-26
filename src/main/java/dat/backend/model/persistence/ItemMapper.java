package dat.backend.model.persistence;

import dat.backend.model.entities.Item;
import dat.backend.model.entities.Material;
import dat.backend.model.exceptions.DatabaseException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ItemMapper {
public static Map<Integer, Material> getAllItems (ConnectionPool connectionPool) throws DatabaseException {
    Map<Integer, Material> materialMap = new HashMap<>();
    String sql = "SELECT * FROM material";

    try(Connection connection = connectionPool.getConnection()) {
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Material material = new Material();
                material.setIdMaterial(rs.getInt("id_material"));
                material.setDescription(rs.getString("description"));
                material.setUnit(rs.getString("unit"));
                material.setPricePerUnit(rs.getInt("price_pr_unit"));

                materialMap.put(material.getIdMaterial(), material);
            }
        }
    } catch (SQLException e) {
        throw new DatabaseException("Fejl ved adgang til materialetabellen i databasen");
    }
    return materialMap;
}
}
