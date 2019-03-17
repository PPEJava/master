package Model;


import Controller.SousCategorie;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModelSousCategorie {

    private static BDD database = new BDD("localhost:8889","root","root","ftfi_site_v2");

    public static ArrayList<SousCategorie> selectAll(){

        ArrayList<SousCategorie> lesSousCategories = new ArrayList<>();

        String query = "SELECT * FROM Sous_Categories";
        database.login();


        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {
                SousCategorie sousCategorie = new SousCategorie(
                        results.getInt("idSousCategorie"),
                        results.getString("nomSousCategorieFR"),
                        results.getString("nomSousCategorieEN"),
                        results.getInt("idCategorie")
                );
                lesSousCategories.add(sousCategorie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return lesSousCategories;

    }


    public static ArrayList<SousCategorie> selectWhere(String mot){

        ArrayList<SousCategorie> lesSousCategories = new ArrayList<>();


        String query = "SELECT * FROM Sous_Categories where idSousCategorie like '%"+mot+"%' "+"or nomSousCategorieFR like '%"+mot+
                "%'or nomSousCategorieEN like '%"+mot+"%';";
        database.login();

        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {

                SousCategorie sousCategorie = new SousCategorie(
                        results.getInt("idSousCategorie"),
                        results.getString("nomSousCategorieFR"),
                        results.getString("nomSousCategorieEN"),
                        results.getInt("idCategorie")
                );
                lesSousCategories.add(sousCategorie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return lesSousCategories;

    }


    public static void insertSousCategorie(SousCategorie sousCategorie)

    {
        String requete = "INSERT INTO Sous_Categories VALUES (Null,'"+sousCategorie.getNomSousCategorieFR()+"','"+sousCategorie.getNomSousCategorieEN()+
                "',"+sousCategorie.getIdCategorie()+
                ");";
        ModelSousCategorie.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + e.getMessage());
        }
        database.logout();

    }

    public static void deleteSousCategorie (int idSousCategorie) {
        String requete = "DELETE FROM Sous_Categories WHERE idSousCategorie = " +idSousCategorie+";";
        ModelSousCategorie.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de rqt " + e.getMessage());
        }
    }

    public static SousCategorie selectSousCategorieWhereId(int idSousCategorie) {
        SousCategorie uneS=null;
        String requete = "SELECT * FROM Sous_Categories WHERE idSousCategorie = " + idSousCategorie+";";
        ModelSousCategorie.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(requete);

            while (results.next())
            {
                SousCategorie uneSousCategorie = new SousCategorie(
                        results.getInt("idSousCategorie"),
                        results.getString("nomSousCategorieFR"),
                        results.getString("nomSousCategorieEN"),
                        results.getInt("idCategorie")
                );

                uneS=uneSousCategorie;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return uneS;

    }


    public static void updateSousCategorie(SousCategorie sousCategorie) {
        String requete =
                "UPDATE Sous_Categories " +
                        "SET nomSousCategorieFR = '" + sousCategorie.getNomSousCategorieFR()+ "'," +
                        "nomSousCategorieEN = '"+sousCategorie.getNomSousCategorieEN()+ "'," +
                        "idCategorie = "+sousCategorie.getIdCategorie()+"" +
                        " WHERE idSousCategorie = "+sousCategorie.getIdSousCategorie()+";";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de requete " + e.getMessage());
        }
    }


    public static SousCategorie selectWhereSousCategorie(SousCategorie uneSousCategorie)
    {
        SousCategorie unS=null;
        String requete="Select * from Sous_Categories where nomSousCategorieFR = '"
                +uneSousCategorie.getNomSousCategorieFR()+"' and nomSousCategorieEN = '"
                +uneSousCategorie.getNomSousCategorieEN()+"' and idCategorie="
                +uneSousCategorie.getIdCategorie()+" ;";

        ModelSousCategorie.database.login();
        try {
            Statement unStat = database.getConnection().createStatement();
            ResultSet unRes= unStat.executeQuery(requete);
            if(unRes.next())
            {
                int idSousCategorie=unRes.getInt("idSousCategorie");
                unS=new SousCategorie(idSousCategorie,uneSousCategorie.getNomSousCategorieFR(),uneSousCategorie.getNomSousCategorieEN(),
                        uneSousCategorie.getIdCategorie());
            }
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + requete);
        }
        ModelSousCategorie.database.logout();
        return unS;


    }

}
