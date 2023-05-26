package dat.backend.model.services;

import dat.backend.model.entities.Item;
import dat.backend.model.entities.ItemList;
import dat.backend.model.entities.Material;
import dat.backend.model.entities.OrderForm;
import dat.backend.model.persistence.ItemFacade;
import dat.backend.model.persistence.OrderFacade;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

public class Calculator {

    public ItemList itemList = new ItemList();
    public Map<Integer, Material> materialMap = new HashMap<>();

    //TODO Skal have Jons hjælp her

//    while (resultSet.next()) {
//        int id = resultSet.getInt("id");
//        double price = resultSet.getDouble("price");
//
//        Material material = new Material(id, price);
//
//        // tilføjer vores material til mappet
//        materialMap.put(id, material);
//    }
//
//    int materialId = /* det id vi ønsker at finde */;
//    Material material = materialMap.get(materialId);
//    if (material != null) {
//        double price = material.getPrice();
//        System.out.println("Price of material with ID " + materialId + ": " + price);
//    } else {
//        System.out.println("Material not found.");
//    }




    public ItemList getItemList() {
        return itemList;
    }

    public Calculator()
    {
        // TODO: hent materialer og gem i et hashmap
        // Fyld objektet op med alt det der er i databasen
    }

    public void calcCarport(int length, int width)
    {
        calcPosts(length, width);  // stolper
        calcBeams(length, width);  // Remme
        calcRafters(length, width);  // Spær
    }

    private void calcRafters(int length, int width) {
        int quantity = 2 + (int) Math.round((length - 4.5 * 2) / (55.0 + 4.5));
        int rafterLength = width;
        //TODO udfyld beams med alt det som vi gemmer i hashmappet
        Item beams = new Item("45x195mm.spærtræubh.", rafterLength, quantity, "stk", "Spær, monteres på rem", 12);
        itemList.addItem(beams);
    }

    private void calcBeams(int length, int width) {
        int quantity = 2;
        int beamLength = length;
        Item beams = new Item("45x195mm.spærtræubxh.", beamLength, quantity, "stk", "Remme i sider, sadles ned i stolper", 15);
        itemList.addItem(beams);
    }

    private void calcPosts(int length, int width) {
        // Rigtige beregninger skal laves her. Dvs, antal og længde
        int quantity = 2 * ( 2 + (int)(Math.floor((length - 130) / 310)));
        int postLength = 300;
        Item posts = new Item("97x97mm.trykimp.Stolpe", postLength, quantity, "stk", "Stolper nedgraves 90cm i jord", 120);
        itemList.addItem(posts);
    }

    //TODO Skrive de resterende materialer ind og tilføje dem til constructoren


}
