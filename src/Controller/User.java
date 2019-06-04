package Controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class User {

    private int idUtilisateur;
    private String email;
    private String motDePasse;
    private String nom;
    private String prenom;

/*
ADMIN:
idUtilisateurPrimaire	int(11)			Non	Aucune		Modifier Modifier	Supprimer Supprimer
plus
	2	matricule

Client:
1	idUtilisateurPrimaire	int(11)			Non	Aucune		Modifier Modifier	Supprimer Supprimer
plus
	2	sigle	varchar(100)	latin1_swedish_ci		Oui	NULL		Modifier Modifier	Supprimer Supprimer
plus
	3	siret	varchar(50)	latin1_swedish_ci		Oui	NULL		Modifier Modifier	Supprimer Supprimer
plus
*/

    public User(int idUtilisateur,String email,String motDePasse, String nom, String prenom){
        this.idUtilisateur = idUtilisateur;
        this.email = email;
        this.motDePasse = getMD5EncryptedValue(motDePasse);
        this.nom = nom;
        this.prenom = prenom;
    }

    public User(String email,String motDePasse, String nom, String prenom){
        this.idUtilisateur = 0;
        this.email = email;
        this.motDePasse = getMD5EncryptedValue(motDePasse);
        this.nom = nom;
        this.prenom = prenom;
    }


    public static String getMD5EncryptedValue(String password) {
        final byte[] defaultBytes = password.getBytes();
        try {
            final MessageDigest md5MsgDigest = MessageDigest.getInstance("MD5");
            md5MsgDigest.reset();
            md5MsgDigest.update(defaultBytes);
            final byte messageDigest[] = md5MsgDigest.digest();
            final StringBuffer hexString = new StringBuffer();
            for (final byte element : messageDigest) {
                final String hex = Integer.toHexString(0xFF & element);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            password = hexString + "";
        } catch (final NoSuchAlgorithmException nsae) {
            nsae.printStackTrace();
        }
        return password;
    }


    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = getMD5EncryptedValue(motDePasse);
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }


}
