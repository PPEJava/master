package Controller;

public class Categorie {

    private int idCategorie;
    private String nomCategorieFR;
    private String nomCategorieEN;


    public Categorie(int idCategorie, String nomCategorieFR, String nomCategorieEN) {
        this.nomCategorieFR = nomCategorieFR;
        this.nomCategorieEN = nomCategorieEN;
        this.idCategorie = idCategorie;
    }

    public Categorie(String nomCategorieFR, String nomCategorieEN) {
        this.nomCategorieFR = nomCategorieFR;
        this.nomCategorieEN = nomCategorieEN;
    }

    public int getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getNomCategorieFR() {
        return nomCategorieFR;
    }

    public void setNomCategorieFR(String nomCategorieFR) {
        this.nomCategorieFR = nomCategorieFR;
    }

    public String getNomCategorieEN() {
        return nomCategorieEN;
    }

    public void setNomCategorieEN(String nomCategorieEN) {
        this.nomCategorieEN = nomCategorieEN;
    }
}
