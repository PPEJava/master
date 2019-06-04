package Controller;

import javax.swing.JOptionPane;

import Model.*;
import View.PrincipalView;
import View.LoginView;

public class Main {

    private static LoginView loginView=null;
    private static PrincipalView principalView=null;

    public static void main(String[] args) {
        loginView = new LoginView();

    }

	public static void verifConnexion(String email, String password)
	{
		if(email.equals("") || password.equals(""))
		{
			JOptionPane.showMessageDialog(null, "Veuillez vérifier vos identifiants", "Erreur", JOptionPane.ERROR_MESSAGE);
		} else {
			User unUser = UserModel.selectWhereUser(email,password);
			if (unUser == null) {
				JOptionPane.showMessageDialog(null, "Veuillez vérifier vos identifiants", "Erreur", JOptionPane.ERROR_MESSAGE);
			} else {
				JOptionPane.showMessageDialog(null, "Bienvenue "+ unUser.getNom()+ " " + unUser.getPrenom(), "Connexion Réussie", JOptionPane.INFORMATION_MESSAGE);
				if(principalView==null)
				{
					principalView= new PrincipalView(unUser);
				}
				loginView.setVisible(false);
				principalView.setVisible(true);
			}
		}
	}


	public static PrincipalView getPrincipalView() {
		return principalView;
	}

	public static void setPrincipalView(PrincipalView principalView) {
		Main.principalView = principalView;
	}

	public static void setLoginView(LoginView loginView) {
		Main.loginView = loginView;
	}

	public static LoginView getLoginView() {return loginView;}


	//fonctions produit

	public static void insertProduit(Produit unProduit) { Model.insertProduit(unProduit); }

	public static void deleteProduit(String refCommercial)
	{
		Model.deleteProduit(refCommercial);
	}

	public static Produit selectWhereProduit(Produit unProduit)
	{
    	return Model.selectWhereProduit(unProduit);
	}

	public static Produit selectProduitWhereRef(String refCommercial) { return Model.selectProduitWhereRef(refCommercial); }

	public static void updateProduit(Produit unProduit) {  Model.updateProduit(unProduit); }

	public static int CountNbProduit() { return Model.CountNbProduit(); }


	//fonctions Article

	public static void insertArticle(Article unArticle) { ModelArticle.insertArticle(unArticle); }

	public static void deleteArticle(int idArticle)
	{
		ModelArticle.deleteArticle(idArticle);
	}

	public static Article selectWhereArticle(Article unArticle)
	{
		return ModelArticle.selectWhereArticle(unArticle);
	}

	public static Article selectArticleWhereId(int idArticle) { return ModelArticle.selectArticleWhereId(idArticle); }

	public static void updateArticle(Article unArticle) {  ModelArticle.updateArticle(unArticle); }

	public static int CountNbArticle() { return ModelArticle.CountNbArticle(); }

	public static Object selectNomArticleFR(){ return ModelArticle.selectNomArticleFR(); }


	//fonctions Sous Categorie

	public static void insertSousCategorie(SousCategorie uneSousCategorie) { ModelSousCategorie.insertSousCategorie(uneSousCategorie); }

	public static void deleteSousCategorie(int idSousCategorie) {ModelSousCategorie.deleteSousCategorie(idSousCategorie); }

	public static SousCategorie selectWhereSousCategorie(SousCategorie uneSousCategorie) { return ModelSousCategorie.selectWhereSousCategorie(uneSousCategorie); }

	public static SousCategorie selectSousCategorieWhereId(int idSousCategorie) { return ModelSousCategorie.selectSousCategorieWhereId(idSousCategorie); }

	public static void updateSousCategorie(SousCategorie uneSousCategorie) {  ModelSousCategorie.updateSousCategorie(uneSousCategorie); }

	public static int CountNbSousCategorie() { return ModelSousCategorie.CountNbSousCategorie(); }


	//fonctions Categorie

	public static void insertCategorie(Categorie uneCategorie) { ModelCategorie.insertCategorie(uneCategorie); }

	public static void deleteCategorie(int idCategorie) {ModelCategorie.deleteCategorie(idCategorie); }

	public static Categorie selectWhereCategorie(Categorie uneCategorie) { return ModelCategorie.selectWhereCategorie(uneCategorie); }

	public static Categorie selectCategorieWhereId(int idCategorie) { return ModelCategorie.selectCategorieWhereId(idCategorie); }

	public static void updateCategorie(Categorie uneCategorie) {  ModelCategorie.updateCategorie(uneCategorie); }

	public static int CountNbCategorie() { return ModelCategorie.CountNbCategorie(); }

	//fonctions Fournisseur
	public static int CountNbFournisseur() { return ModelFournisseur.CountNbFournisseur(); }

}

