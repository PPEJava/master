package Model;


import Controller.Produit;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Model {
    //private static BDD database = new BDD("localhost:8889", "root", "root", "ftfi_site_v2");
    private static BDD database = new BDD("srv129.main-hosting.eu", "u632050847_mmd", "MMD123321", "u632050847_ftfi");


    public static ArrayList<Produit> selectAll(){

        ArrayList<Produit> products = new ArrayList<>();

        String query = "SELECT * FROM Variantes_Articles";
        database.login();

        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {
                Produit produit = new Produit(
                        results.getString("refCommercial"),
                        results.getString("refFournisseur"),
                        results.getString("nomVarianteFR"),
                        results.getString("nomVarianteEN"),
                        results.getString("descriptionVarianteFR"),
                        results.getString("descriptionVarianteEN"),
                        results.getInt("disponibiliteVariante"),
                        results.getFloat("poidsVariante"),
                        results.getFloat("prixVariante"),
                        results.getInt("idArticle"),
                        results.getDate("dateAjout")
                );

                products.add(produit);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return products;

    }


    public static ArrayList<Produit> selectWhere(String mot){

        ArrayList<Produit> products = new ArrayList<>();

        String query = "SELECT * FROM Variantes_Articles where refCommercial like '%"+mot+"%' "+"or refFournisseur like '%"+mot+
                "%'or nomVarianteFR like '%"+mot+"%'or nomVarianteEN like '%"+mot+"%'or descriptionVarianteFR like '%"+mot+
                "%'or descriptionVarianteEN like '%"+mot+"%'or dateAjout like '%"+mot+"%';";
        database.login();

        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(query);

            while (results.next())
            {
                Produit produit = new Produit(
                        results.getString("refCommercial"),
                        results.getString("refFournisseur"),
                        results.getString("nomVarianteFR"),
                        results.getString("nomVarianteEN"),
                        results.getString("descriptionVarianteFR"),
                        results.getString("descriptionVarianteEN"),
                        results.getInt("disponibiliteVariante"),
                        results.getFloat("poidsVariante"),
                        results.getFloat("prixVariante"),
                        results.getInt("idArticle"),
                        results.getDate("dateAjout")
                );

                products.add(produit);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return products;

    }


    public static void insertProduit(Produit produit)
    {
        String requete = "INSERT INTO Variantes_Articles VALUES ('"+produit.getRefCommercial()+"','"+produit.getRefFournisseur()+"','"+produit.getNomVarianteFR()+"','"+produit.getNomVarianteEN()+"',"+produit.getPoidsVariante()+",'"+produit.getDescriptionVarianteFR()+
                "','"+produit.getDescriptionVarianteEN()+"',"+produit.getDisponibiliteVariante()+
                ","+produit.getPrixVariante()+","+produit.getIdArticle()+
                ",'"+produit.getDateAjout()+"');";


        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + e.getMessage());
        }
        database.logout();

    }

    public static void deleteProduit(String refCommercial) {
        String requete = "DELETE FROM Variantes_Articles WHERE refCommercial = '" + refCommercial+"';";
        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de rqt " + e.getMessage());
        }
    }

    public static Produit selectProduitWhereRef(String refCommercial) {
            Produit unP=null;
            String requete = "SELECT * FROM Variantes_Articles WHERE refCommercial = '" + refCommercial+"';";
            Model.database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet results = statement.executeQuery(requete);

            while (results.next())
            {
                Produit unproduit = new Produit(
                        results.getString("refCommercial"),
                        results.getString("refFournisseur"),
                        results.getString("nomVarianteFR"),
                        results.getString("nomVarianteEN"),
                        results.getString("descriptionVarianteFR"),
                        results.getString("descriptionVarianteEN"),
                        results.getInt("disponibiliteVariante"),
                        results.getFloat("poidsVariante"),
                        results.getFloat("prixVariante"),
                        results.getInt("idArticle"),
                        results.getDate("dateAjout")
                );

                unP=unproduit;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        database.logout();

        return unP;

    }



    public static void updateProduit(Produit produit) {
        String requete =
                "UPDATE Variantes_Articles " +
                        "SET refFournisseur = '" + produit.getRefFournisseur()+ "'," +
                        "nomVarianteFR = '"+ produit.getNomVarianteFR() + "'," +
                        "nomVarianteEN = '"+ produit.getNomVarianteEN() + "'," +
                        "poidsVariante = "+produit.getPoidsVariante()+"," +
                        "descriptionVarianteFR = '"+ produit.getDescriptionVarianteFR() + "'," +
                        "descriptionVarianteEN = '"+ produit.getDescriptionVarianteEN() + "'," +
                        "disponibiliteVariante = "+produit.getDisponibiliteVariante()+"," +
                        "prixVariante = "+produit.getPrixVariante()+"," +
                        "idArticle = "+produit.getIdArticle()+"," +
                        "dateAjout = '"+produit.getDateAjout()+"'" +
                        " WHERE refCommercial = '"+produit.getRefCommercial()+"'";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de requete " + e.getMessage());
        }
    }


    public static Produit selectWhereProduit(Produit unProduit)
    {
        Produit unP=null;
        String requete="Select * from Variantes_Articles where refFournisseur = '"
                +unProduit.getRefFournisseur()+"' and nomVarianteFR = '"
                +unProduit.getNomVarianteFR()+"' and nomVarianteEN = '"
                +unProduit.getNomVarianteEN()+"' and descriptionVarianteFR = '"
                +unProduit.getDescriptionVarianteFR()+"' and descriptionVarianteEN = '"
                +unProduit.getDescriptionVarianteEN()+"' and disponibiliteVariante="
                +unProduit.getDisponibiliteVariante()+" and cast(poidsVariante as decimal(10,2))="
                +unProduit.getPoidsVariante()+" and cast(prixVariante as decimal (10,2))="
                +unProduit.getPrixVariante()+" and idArticle ="
                +unProduit.getIdArticle()+" and dateAjout ='"
                +unProduit.getDateAjout()+"';";
        Model.database.login();
        try {
            Statement unStat = database.getConnection().createStatement();
            ResultSet unRes= unStat.executeQuery(requete);
            if(unRes.next())
            {
                String refCommercial=unRes.getString("refCommercial");
                unP=new Produit(refCommercial,unProduit.getRefFournisseur(),unProduit.getNomVarianteFR(),
                        unProduit.getNomVarianteEN(),unProduit.getDescriptionVarianteFR(),unProduit.getDescriptionVarianteEN(),
                        unProduit.getDisponibiliteVariante(),unProduit.getPoidsVariante(),unProduit.getPrixVariante(),unProduit.getIdArticle(),
                        unProduit.getDateAjout());

            }
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + requete);
        }
        Model.database.logout();
        return unP;


    }

    public static int CountNbProduit()
    {
        int NbArticle=0;
        String requete="SELECT COUNT(*) as nb FROM Variantes_Articles;";

        Model.database.login();
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
        Model.database.logout();
        return NbArticle;
    }




}
