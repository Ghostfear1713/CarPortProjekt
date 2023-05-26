package dat.backend.model.entities;

public class Material {
    //TODO lav en klasse der indeholder colums fra material

    private int idMaterial;
    private String description;
    private String unit;
    private int pricePerUnit;

    public Material(int idMaterial, String description, String unit, int pricePerUnit) {
        this.idMaterial = idMaterial;
        this.description = description;
        this.unit = unit;
        this.pricePerUnit = pricePerUnit;
    }

    public Material(){

    }


    public int getIdMaterial() {
        return idMaterial;
    }

    public void setIdMaterial(int idMaterial) {
        this.idMaterial = idMaterial;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getPricePerUnit() {
        return pricePerUnit;
    }

    public void setPricePerUnit(int pricePerUnit) {
        this.pricePerUnit = pricePerUnit;
    }
}
