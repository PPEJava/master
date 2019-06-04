package Model;

import Controller.Categorie;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModelFournisseur {

    //private static BDD database = new BDD("localhost:8889", "root", "root", "ftfi_site_v2");
    private static BDD database = new BDD("srv129.main-hosting.eu", "u632050847_mmd", "MMD123321", "u632050847_ftfi");

        public static int CountNbFournisseur()
        {
            int NbFourn=0;
            String requete="SELECT COUNT(*) as nb FROM Fournisseurs;";

            ModelFournisseur.database.login();
            try {
                Statement unStat = database.getConnection().createStatement();
                ResultSet unRes= unStat.executeQuery(requete);
                if(unRes.next())
                {
                    NbFourn=unRes.getInt("nb");
                }
            } catch (SQLException e) {
                System.out.println("Erreur de la requete " + requete);
            }
            ModelFournisseur.database.logout();
            return NbFourn;



    }

}
