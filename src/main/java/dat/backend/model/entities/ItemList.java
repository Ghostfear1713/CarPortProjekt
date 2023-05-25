package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ItemList {
    private List<Item> itemList = new ArrayList<>();

    public ItemList() {

    }

    public void addItem(Item item)
    {
        itemList.add(item);
    }

    public List<Item> getItemList()
    {
        return itemList;
    }

    public double getTotalPrice(){
        double total = 0.0;
        for (Item i : itemList) {
            total = total + i.getPrice();
        }
        return total;
    }


}
