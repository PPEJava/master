package Model;


import Controller.Categorie;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModelCategorie {

    private static BDD database = new BDD("localhost:8889","root","root","ftfi_site_v2");

    public static ArrayList<Categorie> selectAll(){

        ArrayList<Categorie> lesCategories = new ArrayList<>();

        String query = "SELECT * FROM Categories";
        database.login();


        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {
                Categorie categorie = new Categorie(
                        results.getInt("idCategorie"),
                        results.getString("nomCategorieFR"),
                        results.getString("nomCategorieEN")
                );
                lesCategories.add(categorie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return lesCategories;

    }


    public static ArrayList<Categorie> selectWhere(String mot){

        ArrayList<Categorie> lesCategories = new ArrayList<>();


        String query = "SELECT * FROM Categories where idCategorie like '%"+mot+"%' "+"or nomCategorieFR like '%"+mot+
                "%'or nomCategorieEN like '%"+mot+"%';";
        database.login();

        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {

                Categorie categorie = new Categorie(
                        results.getInt("idCategorie"),
                        results.getString("nomCategorieFR"),
                        results.getString("nomCategorieEN")
                );
                lesCategories.add(categorie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return lesCategories;

    }


    public static void insertCategorie(Categorie categorie)

    {
        String requete = "INSERT INTO Categories VALUES (Null,'"+categorie.getNomCategorieFR()+"','"+categorie.getNomCategorieEN()+
                "');";
        ModelCategorie.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + e.getMessage());
        }
        database.logout();

    }

    public static void deleteCategorie (int idCategorie) {
        String requete = "DELETE FROM Categories WHERE idCategorie = " +idCategorie+";";
        ModelCategorie.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de rqt " + e.getMessage());
        }
    }

    public static Categorie selectCategorieWhereId(int idCategorie) {
        Categorie uneC=null;
        String requete = "SELECT * FROM Categories WHERE idCategorie = " + idCategorie+";";
        ModelCategorie.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(requete);

            while (results.next())
            {
                Categorie uneCategorie = new Categorie(
                        results.getInt("idCategorie"),
                        results.getString("nomCategorieFR"),
                        results.getString("nomCategorieEN")
                );

                uneC=uneCategorie;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return uneC;

    }


    public static void updateCategorie(Categorie categorie) {
        String requete =
                "UPDATE Categories " +
                        "SET nomCategorieFR = '" + categorie.getNomCategorieFR()+ "'," +
                        "nomCategorieEN = '"+categorie.getNomCategorieEN()+ "'," +
                        " WHERE idCategorie = "+categorie.getIdCategorie()+";";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de requete " + e.getMessage());
        }
    }


    public static Categorie selectWhereCategorie(Categorie uneCategorie)
    {
        Categorie unC=null;
        String requete="Select * from Categories where nomCategorieFR = '"
                +uneCategorie.getNomCategorieFR()+"' and nomSousCategorieEN = '"
                +uneCategorie.getNomCategorieEN()+"' ;";

        ModelCategorie.database.login();
        try {
            Statement unStat = database.getConnection().createStatement();
            ResultSet unRes= unStat.executeQuery(requete);
            if(unRes.next())
            {
                int idCategorie=unRes.getInt("idCategorie");
                unC=new Categorie(idCategorie,uneCategorie.getNomCategorieFR(),uneCategorie.getNomCategorieEN());
            }
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + requete);
        }
        ModelCategorie.database.logout();
        return unC;


    }

}
