package dat.backend.model.entities;


//laver et objekt, af order og fylder på af værdierne
public class OrderForm {
    private int længde;
    private int bredde;
    private String tag;
    private int redlength;
    private int redbredde;
    private String navn;
    private String adresse;
    private int postnummer;
    private String by;
    private String telefonnummer;
    private String email;


    public OrderForm(int længde, int bredde, String tag, int redlength, int redbredde, String navn, String adresse, int postnummer,String by,String telefonnummer,String email) {
        this.længde = længde;
        this.bredde = bredde;
        this.tag = tag;
        this.redlength = redlength;
        this.redbredde = redbredde;
        this.navn = navn;
        this.adresse = adresse;
        this.postnummer = postnummer;
        this.by = by;
        this.telefonnummer = telefonnummer;
        this.email = email;
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

    public int getRedlength() {
        return redlength;
    }

    public void setRedlength(int redlength) {
        this.redlength = redlength;
    }

    public int getRedbredde() {
        return redbredde;
    }

    public void setRedbredde(int redbredde) {
        this.redbredde = redbredde;
    }

    public String getNavn() {
        return navn;
    }

    public void setNavn(String navn) {
        this.navn = navn;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public int getPostnummer() {
        return postnummer;
    }

    public void setPostnummer(int postnummer) {
        this.postnummer = postnummer;
    }

    public String getBy() {
        return by;
    }

    public void setBy(String by) {
        this.by = by;
    }

    public String getTelefonnummer() {
        return telefonnummer;
    }

    public void setTelefonnummer(String telefonnummer) {
        this.telefonnummer = telefonnummer;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
