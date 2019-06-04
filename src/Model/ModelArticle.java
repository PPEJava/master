package Model;


import Controller.Article;

import java.lang.annotation.ElementType;
import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModelArticle {
    //private static BDD database = new BDD("localhost:8889", "root", "root", "ftfi_site_v2");
    private static BDD database = new BDD("srv129.main-hosting.eu", "u632050847_mmd", "MMD123321", "u632050847_ftfi");

    public static ArrayList<Article> selectAll(){

        ArrayList<Article> lesarticles = new ArrayList<>();

        String query = "SELECT * FROM Articles";
        database.login();


        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {
                Article article = new Article(
                        results.getInt("idArticle"),
                        results.getString("nomArticleFR"),
                        results.getString("nomArticleEN"),
                        results.getString("descriptionArticleFR"),
                        results.getString("descriptionArticleEN"),
                        results.getInt("idSousCategorie"),
                        results.getInt("idFournisseur")
                );
                lesarticles.add(article);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return lesarticles;

    }


    public static ArrayList<Article> selectWhere(String mot){

        ArrayList<Article> articles = new ArrayList<>();


        String query = "SELECT * FROM Articles where idArticle like '%"+mot+"%' "+"or nomArticleFR like '%"+mot+
                "%'or nomArticleEN like '%"+mot+"%'or descriptionArticleFR like '%"+mot+"%'or descriptionArticleEN like'%"+mot+"%';";
        database.login();

        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {

                Article article = new Article(
                        results.getInt("idArticle"),
                        results.getString("nomArticleFR"),
                        results.getString("nomArticleEN"),
                        results.getString("descriptionArticleFR"),
                        results.getString("descriptionArticleEN"),
                        results.getInt("idSousCategorie"),
                        results.getInt("idFournisseur")
                );

                articles.add(article);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return articles;

    }


    public static void insertArticle(Article article)

    {
        String requete = "INSERT INTO Articles VALUES (Null,'"+article.getNomArticleFR()+"','"+article.getNomArticleEN()+
                "','"+article.getDescriptionArticleFR()+"','"+article.getDescriptionArticleEN()+
                "',"+article.getIdSousCategorie()+","+article.getIdFournisseur()+
                ");";
        ModelArticle.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + e.getMessage());
        }
        database.logout();

    }

    public static void deleteArticle(int idArticle) {
        String requete = "DELETE FROM Articles WHERE idArticle = " + idArticle+";";
        ModelArticle.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de rqt " + e.getMessage());
        }
    }

    public static Article selectArticleWhereId(int idArticle) {
        Article unA=null;
        String requete = "SELECT * FROM Articles WHERE idArticle = " + idArticle+";";
        ModelArticle.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(requete);

            while (results.next())
            {
                Article unarticle = new Article(
                        results.getInt("idArticle"),
                        results.getString("nomArticleFR"),
                        results.getString("nomArticleEN"),
                        results.getString("descriptionArticleFR"),
                        results.getString("descriptionArticleEN"),
                        results.getInt("idSousCategorie"),
                        results.getInt("idFournisseur")
                );

                unA=unarticle;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return unA;

    }


    public static void updateArticle(Article article) {
        String requete =
                "UPDATE Articles " +
                        "SET nomArticleFR = '" + article.getNomArticleFR()+ "'," +
                        "nomArticleEN = '"+ article.getNomArticleEN() + "'," +
                        "descriptionArticleFR = '"+ article.getDescriptionArticleFR() + "'," +
                        "descriptionArticleEN = '"+ article.getDescriptionArticleEN() + "'," +
                        "idSousCategorie = "+article.getIdSousCategorie()+"," +
                        "idFournisseur = "+article.getIdFournisseur()+"" +
                        " WHERE idArticle = "+article.getIdArticle()+";";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de requete " + e.getMessage());
        }
    }


    public static Article selectWhereArticle(Article unarticle)
    {
        Article unA=null;
        String requete="Select * from Articles where nomArticleFR = '"
                +unarticle.getNomArticleFR()+"' and nomArticleEN = '"
                +unarticle.getNomArticleEN()+"' and descriptionArticleFR = '"
                +unarticle.getDescriptionArticleFR()+"' and descriptionArticleEN = '"
                +unarticle.getDescriptionArticleEN()+"' and idSousCategorie = "
                +unarticle.getIdSousCategorie()+" and idFournisseur="
                +unarticle.getIdFournisseur()+" ;";

        ModelArticle.database.login();
        try {
            Statement unStat = database.getConnection().createStatement();
            ResultSet unRes= unStat.executeQuery(requete);
            if(unRes.next())
            {
                int idArticle=unRes.getInt("idArticle");
                unA=new Article(idArticle,unarticle.getNomArticleFR(),unarticle.getNomArticleEN(),
                        unarticle.getDescriptionArticleFR(),unarticle.getDescriptionArticleEN(),unarticle.getIdSousCategorie(),
                        unarticle.getIdFournisseur());
            }
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + requete);
        }
        ModelArticle.database.logout();
        return unA;


    }
    public static int CountNbArticle()
    {
        int NbArticle=0;
        String requete="SELECT COUNT(*) as nb FROM Articles;";

        ModelArticle.database.login();
        try {
            Statement unStat = database.getConnection().createStatement();
            ResultSet unRes= unStat.executeQuery(requete);
            if(unRes.next())
            {
                NbArticle=unRes.getInt("nb");
            }
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + requete);
        }
        ModelArticle.database.logout();
        return NbArticle;

    }

    public static ArrayList<Object> selectNomArticleFR(){
        ArrayList<Object> lesnoms = new ArrayList<>();
        String nom;
        String query = "SELECT nomArticleFR FROM Articles ORDER BY nomArticleFR;";
        database.login();

        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {
                nom=results.getString("nomArticleFR");
                lesnoms.add(nom);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return lesnoms;
    }


}
