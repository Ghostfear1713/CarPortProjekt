package dat.backend.model.entities;


//laver et objekt, af order og fylder på af værdierne
public class OrderForm {
    private int længde;
    private int bredde;
    private String tag;

    public OrderForm(int længde, int bredde, String tag) {
        this.længde = længde;
        this.bredde = bredde;
        this.tag = tag;
    }

    public OrderForm() {
    }

    public int getLængde() {
        return længde;
    }

    public void setLængde(int længde) {
        this.længde = længde;
    }

    public int getBredde() {
        return bredde;
    }

    public void setBredde(int bredde) {
        this.bredde = bredde;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }
}
