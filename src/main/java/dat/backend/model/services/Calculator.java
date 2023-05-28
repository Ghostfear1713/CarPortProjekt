package dat.backend.model.services;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Item;
import dat.backend.model.entities.ItemList;
import dat.backend.model.entities.Material;
import dat.backend.model.entities.OrderForm;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.ItemFacade;
import dat.backend.model.persistence.OrderFacade;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

public class Calculator{
    public ItemList itemList = new ItemList();
    public Map<Integer, Material> materialMap;
    private static final int RAFTER_ID = 10;
    private static final int BEAM_ID = 10;
    private static final int POST_ID = 11;

    public ItemList getItemList() {
        return itemList;
    }

    public Calculator(ConnectionPool connectionPool) throws DatabaseException {
        materialMap = ItemFacade.getAllItems(connectionPool);
    }

    public void calcCarport(int length, int width)
    {
        itemList.addItem(calcRafters(length, width));  // Spær
        itemList.addItem(calcBeams(length, width));  // Remme
        itemList.addItem(calcPosts(length, width));  // stolper
    }

    public Item calcRafters(int length, int width) {
        int quantity = 2 + (int) Math.round((length - 4.5 * 2) / (55.0 + 4.5));
        int rafterLength = width;
        //TODO udfyld beams med alt det som vi gemmer i hashmappet

        Item beams = new Item(materialMap.get(RAFTER_ID).getDescription(),
                rafterLength, quantity,
                materialMap.get(RAFTER_ID).getUnit(),
                "Spær, monteres på rem",
                materialMap.get(RAFTER_ID).getPricePerUnit() * quantity);
        
        return beams;
    }

    public Item calcBeams(int length, int width) {
        int quantity = 2;
        int beamLength = length;
        Item beams = new Item(materialMap.get(BEAM_ID).getDescription(), beamLength, quantity,
                materialMap.get(BEAM_ID).getUnit(), "Remme i sider, sadles ned i stolper",
                materialMap.get(BEAM_ID).getPricePerUnit() * quantity);

         return beams;
    }

    public Item calcPosts(int length, int width) {
        // Rigtige beregninger skal laves her. Dvs, antal og længde
        int quantity = 2 * ( 2 + (int)(Math.floor((length - 130) / 310)));
        int postLength = 300;
        Item posts = new Item(materialMap.get(POST_ID).getDescription(), postLength, quantity,
                materialMap.get(POST_ID).getUnit(),
                "Stolper nedgraves 90cm i jord",
                materialMap.get(POST_ID).getPricePerUnit() * quantity);

        return posts;
    }



}
