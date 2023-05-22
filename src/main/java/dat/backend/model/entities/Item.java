package dat.backend.model.entities;

public class Item {

    private int itemId;
    private String materialDescription;
    private int length;
    private int quantity;
    private String unit;
    private String guidanceDescription;

    public Item(String materialDescription, int length, int quantity, String unit, String guidanceDescription) {
        this.itemId = itemId;
        this.materialDescription = materialDescription;
        this.length = length;
        this.quantity = quantity;
        this.unit = unit;
        this.guidanceDescription = guidanceDescription;
    }

    public Item(int itemId, String materialDescription, int length, int quantity, String unit, String guidanceDescription) {
        this.itemId = itemId;
        this.materialDescription = materialDescription;
        this.length = length;
        this.quantity = quantity;
        this.unit = unit;
        this.guidanceDescription = guidanceDescription;
    }

    public Item() {

    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getMaterialDescription() {
        return materialDescription;
    }

    public void setMaterialDescription(String materialDescription) {
        this.materialDescription = materialDescription;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getGuidanceDescription() {
        return guidanceDescription;
    }

    public void setGuidanceDescription(String guidanceDescription) {
        this.guidanceDescription = guidanceDescription;
    }
}
