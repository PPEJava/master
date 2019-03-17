package Controller;

public class Article {

        private int idArticle;
        private String nomArticleFR;
        private String nomArticleEN;
        private String descriptionArticleFR;
        private String descriptionArticleEN;
        private int idSousCategorie;
        private int idFournisseur;
/*


DELIMITER $$
CREATE TRIGGER `TRG_Articles_On_Insert_Update_Quotes` AFTER INSERT ON `Articles`
BEGIN
UPDATE Articles SET nomArticleFR=REPLACE(nomArticleFR, "'", "\'"),nomArticleEN=REPLACE(nomArticleEN, "'", "\'"),descriptionArticleFR=REPLACE(descriptionArticleFR, "'", "\'"),descriptionArticleEN=REPLACE(descriptionArticleEN, "'", "\'")
WHERE Articles.idArticle=NEW.idArticle;

END
$$
DELIMITER ;

  */

    public Article(){
        this.nomArticleFR=this.nomArticleEN=this.descriptionArticleFR=this.descriptionArticleEN="";
        this.idArticle=this.idSousCategorie=this.idFournisseur=0;
    }
    public Article(int idArticle, String nomArticleFR, String nomArticleEN, String descriptionArticleFR, String descriptionArticleEN, int idSousCategorie,int idFournisseur){
        this.idArticle=idArticle;
        this.nomArticleFR=nomArticleFR;
        this.nomArticleEN=nomArticleEN;
        this.descriptionArticleFR=descriptionArticleFR;
        this.descriptionArticleEN=descriptionArticleEN;
        this.idSousCategorie=idSousCategorie;
        this.idFournisseur=idFournisseur;
    }

    public Article(String nomArticleFR, String nomArticleEN, String descriptionArticleFR, String descriptionArticleEN, int idSousCategorie,int idFournisseur) {
        this.nomArticleFR=nomArticleFR;
        this.nomArticleEN=nomArticleEN;
        this.descriptionArticleFR=descriptionArticleFR;
        this.descriptionArticleEN=descriptionArticleEN;
        this.idSousCategorie=idSousCategorie;
        this.idFournisseur=idFournisseur;

    }

    public int getIdArticle() {
        return idArticle;
    }

    public void setIdArticle(int idArticle) {
        this.idArticle = idArticle;
    }

    public String getNomArticleFR() {
        return nomArticleFR;
    }

    public void setNomArticleFR(String nomArticleFR) {
        this.nomArticleFR = nomArticleFR;
    }

    public String getNomArticleEN() {
        return nomArticleEN;
    }

    public void setNomArticleEN(String nomArticleEN) {
        this.nomArticleEN = nomArticleEN;
    }

    public String getDescriptionArticleFR() {
        return descriptionArticleFR;
    }

    public void setDescriptionArticleFR(String descriptionArticleFR) {
        this.descriptionArticleFR = descriptionArticleFR;
    }

    public String getDescriptionArticleEN() {
        return descriptionArticleEN;
    }

    public void setDescriptionArticleEN(String descriptionArticleEN) {
        this.descriptionArticleEN = descriptionArticleEN;
    }

    public int getIdSousCategorie() {
        return idSousCategorie;
    }

    public void setIdSousCategorie(int idSousCategorie) {
        this.idSousCategorie = idSousCategorie;
    }

    public int getIdFournisseur() {
        return idFournisseur;
    }

    public void setIdFournisseur(int idFournisseur) {
        this.idFournisseur = idFournisseur;
    }



    }


