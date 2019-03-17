package Model;

import Controller.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLTimeoutException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserModel {


    private static BDD database = new BDD("localhost:8889", "root", "root", "ftfi_site_v2");


    public static void insertUser(Controller.User user) {
        String query = "INSERT INTO user VALUES('" + user.getEmail() + "','" + user.getMotDePasse() + "','" + user.getNom() + "','" + user.getPrenom() + "')";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(query);
        } catch (SQLException e) {
            System.out.println("Erreur de la requete " + e.getMessage());
        }
        database.logout();

    }


    public static ArrayList<Controller.User> selectAllUserClient() {
        ArrayList<Controller.User> users = new ArrayList<Controller.User>();
        String query = "SELECT * FROM Utilisateurs u,Admin a WHERE u.idUtilisateur=a.idUtilisateur";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet result = statement.executeQuery(query);
            if (result.next()) {
                Controller.User user = new Controller.User(
                        result.getInt("idUtilisateur"),
                        result.getString("email"),
                        result.getString("motDePasse"),
                        result.getString("nom"),
                        result.getString("prenom")
                );
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    public static ArrayList<Controller.User> selectAllUserAdmin() {
        ArrayList<Controller.User> users = new ArrayList<Controller.User>();
        String query = "SELECT * FROM Utilisateurs u,Client c WHERE u.idUtilisateur=c.idUtilisateur";

        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet result = statement.executeQuery(query);
            if (result.next()) {
                Controller.User user = new Controller.User(
                        result.getInt("idUtilisateur"),
                        result.getString("email"),
                        result.getString("motDePasse"),
                        result.getString("nom"),
                        result.getString("prenom")
                );
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }


    public static Controller.User selectWhereUser(String email, String motDePasse) {
        Controller.User user = null;
        String query = "SELECT * FROM Utilisateurs WHERE email = '" + email + "' AND motDePasse = '" + User.getMD5EncryptedValue(motDePasse) + "'";
        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            ResultSet result = statement.executeQuery(query);
            while (result.next()) {
                user = new Controller.User(result.getInt("idUtilisateur"), result.getString("email"), result.getString("motDePasse"), result.getString("nom"), result.getString("prenom"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        database.logout();

        return user;
    }


    public static void deleteUser(int idUtilisateur) {
        String requete = "DELETE FROM Utilisateurs WHERE idUtilisateur = " + idUtilisateur;
        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(requete);
        } catch (SQLException e) {
            System.out.println("Erreur de rqt " + e.getMessage());
        }
        database.logout();

    }

    public static void updateUser(Controller.User user) {
        String query = "UPDATE Utilisateurs SET email = '" + user.getEmail() + "',motDePasse = '" + user.getMotDePasse() + "',nom='" + user.getNom() + "',prenom='" + user.getPrenom() + "' WHERE idUtilisateur = " + user.getIdUtilisateur();
        database.login();
        try {
            Statement statement = database.getConnection().createStatement();
            statement.execute(query);
        } catch (SQLException e) {
            System.out.println("Erreur de requete " + e.getMessage());
        }
        database.logout();

    }

   /* public static boolean verifDroit(int idUtilisateur, boolean isAdmin) {
        String requete = "";

        if (isAdmin)
            requete = "SELECT FROM Admin WHERE idUtilisateur = " + idUtilisateur;

        else {
            requete = "SELECT FROM Client WHERE idUtilisateur = " + idUtilisateur;
        }
        database.login();

        try {
            Statement statementAdmin = database.getConnection().createStatement();
            statementAdmin.execute(requete);
            ResultSet result = statementAdmin.executeQuery(requete);
            boolean isNotNull = result.next();
            if (isNotNull) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Erreur de rqt " + e.getMessage());
        }
        return false;
    }*/
}


