package Model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDD {


    private String pwd,server,user,bdd;

    private Connection connection;

    /**
     *
     * @param server
     * @param user
     * @param pwd
     * @param bdd
     */
    public BDD(String server,String user,String pwd,String bdd)
    {
        this.server = server;
        this.user = user;
        this.pwd = pwd;
        this.bdd = bdd;
        this.connection = null;
    }


    /**
     *
     */
    public void loadLibrary()
    {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            System.out.println("Absence du pilote connector JDBC");
        }
    }

    /**
     *
     */
    public void login()
    {
        this.loadLibrary();
        String url = "jdbc:mysql://" + this.server + "/" + this.bdd;
        try {
            this.connection = DriverManager.getConnection(url,this.user,this.pwd);
        } catch (SQLException e) {
            System.out.println("Connection impossible à " + url);
        }
    }

    /**
     *
     */
    public void logout()
    {
        try {
            if(this.connection != null) {
                this.connection.close();
            }
        } catch (SQLException e) {
            System.out.println("Imposible de fermer la connection");
        }

    }

    public Connection getConnection() {
        return this.connection;
    }
}
