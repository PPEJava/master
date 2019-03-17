package Controller;

import java.util.Date;

/**
 *
 */
public class Produit {

    private String refCommercial;
    private String refFournisseur;
    private String nomVarianteFR;
    private String nomVarianteEN;
    private String descriptionVarianteFR;
    private String descriptionVarianteEN;
    private int disponibiliteVariante;
    private float poidsVariante;
    private float prixVariante;
    private int idArticle;
    private Date dateAjout;

            /*

DELIMITER $$
CREATE TRIGGER `TRG_VarArticles_On_Insert_Update_Quotes` AFTER INSERT ON `Articles`
FOR EACH ROW BEGIN
UPDATE Variantes_Articles set refCommercial = REPLACE(refCommercial, "\'", "\\'"),refFournisseur = REPLACE(refFournisseur, "\'", "\\'"),
nomVarianteFR = REPLACE(nomVarianteFR, "\'", "\\'")
,nomVarianteEN = REPLACE(nomVarianteEN, "\'", "\\'")
,descriptionVarianteFR = REPLACE(descriptionVarianteFR, "\'", "\\'")
,descriptionVarianteEN = REPLACE(descriptionVarianteEN, "\'", "\\'");
UPDATE Variantes_Articles set refCommercial = REPLACE(refCommercial, "\\'", "\'"),refFournisseur = REPLACE(refFournisseur, "\\'", "\'"),
nomVarianteFR = REPLACE(nomVarianteFR, "\\'", "\'")
,nomVarianteEN = REPLACE(nomVarianteEN, "\\'", "\'")
,descriptionVarianteFR = REPLACE(descriptionVarianteFR, "\\'", "\'")
,descriptionVarianteEN = REPLACE(descriptionVarianteEN, "\\'", "\'");
END
$$
DELIMITER ;

*/


    public Produit(String refCommercial, String refFournisseur, String nomVarianteFR, String nomVarianteEN, String descriptionVarianteFR, String descriptionVarianteEN, int disponibiliteVariante, float poidsVariante, float prixVariante, int idArticle){
        this.refCommercial  = this.refFournisseur = this.nomVarianteFR= this.nomVarianteEN=
                this.descriptionVarianteFR= this.descriptionVarianteEN="";
        this.disponibiliteVariante = this.idArticle = 0;
        this.poidsVariante=this.prixVariante= 0;
        this.dateAjout=new Date();

    }

    public Produit(String refCommercial, String refFournisseur, String nomVarianteFR, String nomVarianteEN, String descriptionVarianteFR, int disponibiliteVariante, float poidsVariante, float prixVariante, int idArticle) {
        this.refCommercial = refCommercial;
        this.refFournisseur = refFournisseur;
        this.nomVarianteFR = nomVarianteFR;
        this.nomVarianteEN = nomVarianteEN;
        this.descriptionVarianteFR = descriptionVarianteFR;
        this.descriptionVarianteEN = descriptionVarianteEN;
        this.disponibiliteVariante = disponibiliteVariante;
        this.poidsVariante = poidsVariante;
        this.prixVariante = prixVariante;
        this.idArticle = idArticle;
        this.dateAjout = new Date();
    }

    public Produit(String refCommercial, String refFournisseur, String nomVarianteFR, String nomVarianteEN, String descriptionVarianteFR, String descriptionVarianteEN, int disponibiliteVariante, float poidsVariante, float prixVariante, int idArticle, Date dateAjout) {
        this.refCommercial=refCommercial;
        this.refFournisseur = refFournisseur;
        this.nomVarianteFR = nomVarianteFR;
        this.nomVarianteEN = nomVarianteEN;
        this.descriptionVarianteFR = descriptionVarianteFR;
        this.descriptionVarianteEN = descriptionVarianteEN;
        this.disponibiliteVariante = disponibiliteVariante;
        this.poidsVariante = poidsVariante;
        this.prixVariante = prixVariante;
        this.idArticle = idArticle;
        this.dateAjout = dateAjout;
    }



    public String getRefCommercial() {
        return refCommercial;
    }

    public void setRefCommercial(String refCommercial) {
        this.refCommercial = refCommercial;
    }

    public String getRefFournisseur() {
        return refFournisseur;
    }

    public void setRefFournisseur(String refFournisseur) {
        this.refFournisseur = refFournisseur;
    }

    public String getNomVarianteFR() {
        return nomVarianteFR;
    }

    public void setNomVarianteFR(String nomVarianteFR) {
        this.nomVarianteFR = nomVarianteFR;
    }

    public String getNomVarianteEN() {
        return nomVarianteEN;
    }

    public void setNomVarianteEN(String nomVarianteEN) {
        this.nomVarianteEN = nomVarianteEN;
    }

    public String getDescriptionVarianteFR() {
        return descriptionVarianteFR;
    }

    public void setDescriptionVarianteFR(String descriptionVarianteFR) {
        this.descriptionVarianteFR = descriptionVarianteFR;
    }

    public String getDescriptionVarianteEN() {
        return descriptionVarianteEN;
    }

    public void setDescriptionVarianteEN(String descriptionVarianteEN) {
        this.descriptionVarianteEN = descriptionVarianteEN;
    }

    public int getDisponibiliteVariante() {
        return disponibiliteVariante;
    }

    public void setDisponibiliteVariante(int disponibiliteVariante) {
        this.disponibiliteVariante = disponibiliteVariante;
    }

    public float getPoidsVariante() {
        return poidsVariante;
    }

    public void setPoidsVariante(float poidsVariante) {
        this.poidsVariante = poidsVariante;
    }

    public float getPrixVariante() {
        return prixVariante;
    }

    public void setPrixVariante(float prixVariante) {
        this.prixVariante = prixVariante;
    }

    public int getIdArticle() {
        return idArticle;
    }

    public void setIdArticle(int idArticle) {
        this.idArticle = idArticle;
    }

    public Date getDateAjout() {
        return dateAjout;
    }

    public void setDateAjout(Date dateAjout) {
        this.dateAjout = dateAjout;
    }
}
