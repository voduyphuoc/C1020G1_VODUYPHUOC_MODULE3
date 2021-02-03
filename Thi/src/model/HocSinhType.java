package model;

public class HocSinhType {
    private String id_type;
    private String name_type;

    public HocSinhType() {
    }

    public HocSinhType(String id_type, String name_type) {
        this.id_type = id_type;
        this.name_type = name_type;
    }

    public String getId_type() {
        return id_type;
    }

    public void setId_type(String id_type) {
        this.id_type = id_type;
    }

    public String getName_type() {
        return name_type;
    }

    public void setName_type(String name_type) {
        this.name_type = name_type;
    }
}
