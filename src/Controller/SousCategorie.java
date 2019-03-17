package Controller;

public class SousCategorie {


        private int idSousCategorie;
        private String nomSousCategorieFR;
        private String nomSousCategorieEN;
        private int idCategorie;


        public SousCategorie(int idSousCategorie, String nomSousCategorieFR, String nomSousCategorieEN,int idCategorie){
            this.idSousCategorie=idSousCategorie;
            this.nomSousCategorieFR=nomSousCategorieFR;
            this.nomSousCategorieEN=nomSousCategorieEN;
            this.idCategorie=idCategorie;

        }

        public SousCategorie(String nomSousCategorieFR, String nomSousCategorieEN,int idCategorie) {
            this.nomSousCategorieFR=nomSousCategorieFR;
            this.nomSousCategorieEN=nomSousCategorieEN;
            this.idCategorie=idCategorie;
        }
    public int getIdSousCategorie() {
        return idSousCategorie;
    }

    public void setIdSousCategorie(int idSousCategorie) {
        this.idSousCategorie = idSousCategorie;
    }

    public String getNomSousCategorieFR() {
        return nomSousCategorieFR;
    }

    public void setNomSousCategorieFR(String nomSousCategorieFR) {
        this.nomSousCategorieFR = nomSousCategorieFR;
    }

    public String getNomSousCategorieEN() {
        return nomSousCategorieEN;
    }

    public void setNomSousCategorieEN(String nomSousCategorieEN) {
        this.nomSousCategorieEN = nomSousCategorieEN;
    }

    public int getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public SousCategorie(){
        this.nomSousCategorieFR=this.nomSousCategorieEN="";
        this.idSousCategorie=this.idCategorie=0;
    }


}
