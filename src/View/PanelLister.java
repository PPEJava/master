package View;

import Controller.Main;
import Controller.Produit;
import Controller.Tableau;
import Model.Model;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;


public class PanelLister extends PanelCentral implements ActionListener
{
    private JTable uneTable;
    private static Tableau unTableau;
    private JTextField txtMot=new JTextField();
    private JButton btOK=new JButton("OK");

    private static JPanel ajouter= new JPanel();


    private JTextField txtRefCommercial=new JTextField();
    private JTextField txtRefFournisseur=new JTextField();
    private JTextField txtNomVarFR=new JTextField();
    private JTextField txtNomVarEN=new JTextField();
    private JTextField txtDescriptionVarFR=new JTextField();
    private JTextField txtDescriptionVarEN=new JTextField();
    private JTextField txtDispoVar=new JTextField();
    private JTextField txtPoidsVar=new JTextField();
    private JTextField txtPrixVar=new JTextField();
    private JTextField txtIdArticle=new JTextField();
    private JButton btAnnuler = new JButton("Annuler");
    private JButton btAjouter = new JButton("Ajouter");
    private JButton btModifier = new JButton("Modifier");

    private JComboBox listeArticle;

    JFormattedTextField txtDateAjout = new JFormattedTextField(DateFormat.getDateInstance(DateFormat.SHORT));


    public PanelLister()
    {
        super();
        // Affichage des produits

        //ArrayList<Produit> lesProduits= Model.selectAll();
        String entetes[]={"Référence Commerciale","Référence Fournisseur","nom FR","nom EN",
                "description FR","description EN","disponibilité","poids","prix",
                "article","date d'ajout"};
        unTableau=new Tableau(this.getLesProduits(Model.selectAll()),entetes);

        //this.uneTable=new JTable(this.getLesProduits(),entetes);
        this.uneTable=new JTable(unTableau);


        //on insère la table dans une scrollPan
        JScrollPane uneScroll=new JScrollPane(this.uneTable);
        uneScroll.setBounds(20,20,900,300);//relatif dans le panel
        this.add(uneScroll);



        this.ajouter.setLayout(new GridLayout(12,1));
        this.ajouter.setBounds(20,350,600,200);
        this.ajouter.add(new JLabel("Référence commerciale : "));
        this.ajouter.add(this.txtRefCommercial);
        this.ajouter.add(new JLabel("Référence fournisseur : "));
        this.ajouter.add(this.txtRefFournisseur);
        this.ajouter.add(new JLabel("Nom en FR: "));
        this.ajouter.add(this.txtNomVarFR);
        this.ajouter.add(new JLabel("Nom en AN : "));
        this.ajouter.add(this.txtNomVarEN);
        this.ajouter.add(new JLabel("Description en FR: "));
        this.ajouter.add(this.txtDescriptionVarFR);
        this.ajouter.add(new JLabel("Description en EN: "));
        this.ajouter.add(this.txtDescriptionVarEN);

        this.ajouter.add(new JLabel("Disponibilité :"));
        this.ajouter.add(this.txtDispoVar);
        this.ajouter.add(new JLabel("Poids : "));
        this.ajouter.add(this.txtPoidsVar);
        this.ajouter.add(new JLabel("Prix : "));
        this.ajouter.add(this.txtPrixVar);
        this.ajouter.add(new JLabel("Catégorie d'Article : "));
        this.ajouter.add(this.txtIdArticle);

        /*combobox des intitulés articles
        ArrayList liste= (ArrayList) Main.selectNomArticleFR();
        listeArticle = new JComboBox();
        for(int i=0;i<liste.size();i++)
            listeArticle.addItem(liste.get(i));


        this.ajouter.add(listeArticle);
*/
        this.ajouter.add(new JLabel("Date d'ajout "));
        this.ajouter.add(this.txtDateAjout);

        this.txtMot.setBounds(650,350,100,20);
        this.add(this.txtMot);
        this.txtMot.setText("Rechercher");

        this.btOK.setBounds(800,350,80,20);
        this.add(this.btOK);
        this.btAjouter.setBounds(650,400,100,20);
        this.add(this.btAjouter);
        this.btModifier.setBounds(650,450,100,20);
        this.add(this.btModifier);
        this.btAnnuler.setBounds(650,500,100,20);
        this.add(this.btAnnuler);

        this.btAnnuler.addActionListener(this);
        this.btAjouter.addActionListener(this);
        this.btModifier.addActionListener(this);

        this.add(this.ajouter);

        this.btOK.addActionListener(this);
        this.uneTable.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {


            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {

            }

            @Override
            public void mouseExited(MouseEvent e) {

            }
        });





        // event de suppression
        this.uneTable.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int ligne;
                if(e.getClickCount()==1) {
                    ligne = uneTable.getSelectedRow();
                    ModifierChampsProduits(Main.selectProduitWhereRef((String) unTableau.getValueAt(ligne, 0)));


                }
                if(e.getClickCount()==2)
                {
                    int retour=JOptionPane.showConfirmDialog(null,"Voulez-vous supprimer le produit?","Supprimer",
                            JOptionPane.YES_NO_OPTION);
                    if(retour==0)
                    {

                        ligne=uneTable.getSelectedRow();
                        String refCommercial=((String)unTableau.getValueAt(ligne,0));
                        unTableau.deleteTable(ligne);
                        Main.deleteProduit(refCommercial);
                    }



                }
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {

            }

            @Override
            public void mouseExited(MouseEvent e) {

            }
        });


    }


    public static void mettreAJourTable(Produit unProduit) {
        Object ligne[]={unProduit.getRefCommercial(),unProduit.getRefFournisseur(),unProduit.getNomVarianteFR(),
                unProduit.getNomVarianteEN(),unProduit.getDescriptionVarianteFR(),unProduit.getDescriptionVarianteEN(),
                unProduit.getDisponibiliteVariante(),unProduit.getPoidsVariante(),unProduit.getPrixVariante(),unProduit.getIdArticle(),
                unProduit.getDateAjout()};
        unTableau.insertTable(ligne);

    }

    public String [][]getLesProduits(ArrayList<Produit>lesProduits)
    {

        String[][]matrice=new String [lesProduits.size()][11];
        int i=0;
        for(Produit unProduit:lesProduits)
        {
            matrice[i][0]=unProduit.getRefCommercial();
            matrice[i][1]=unProduit.getRefFournisseur();
            matrice[i][2]=unProduit.getNomVarianteFR();
            matrice[i][3]=unProduit.getNomVarianteEN();
            matrice[i][4]=unProduit.getDescriptionVarianteFR();
            matrice[i][5]=unProduit.getDescriptionVarianteEN();
            matrice[i][6]=unProduit.getDisponibiliteVariante()+"";
            matrice[i][7]=unProduit.getPoidsVariante()+"";
            matrice[i][8]=unProduit.getPrixVariante()+"";
            matrice[i][9]=unProduit.getIdArticle()+"";
            matrice[i][10]=unProduit.getDateAjout()+"";
            i++;

        }
        return matrice;

    }

    public void ModifierChampsProduits(Produit unProduit)
    {
        this.txtRefCommercial.setText(unProduit.getRefCommercial());
        this.txtRefFournisseur.setText(unProduit.getRefFournisseur());
        this.txtNomVarFR.setText(unProduit.getNomVarianteFR());
        this.txtNomVarEN.setText(unProduit.getNomVarianteEN());
        this.txtDescriptionVarFR.setText(unProduit.getDescriptionVarianteFR());
        this.txtDescriptionVarEN.setText(unProduit.getDescriptionVarianteEN());
        this.txtDispoVar.setText(unProduit.getDisponibiliteVariante()+"");
        this.txtPoidsVar.setText(unProduit.getPoidsVariante()+"");
        this.txtPrixVar.setText(unProduit.getPrixVariante()+"");

        //a modifier
        //this.listeArticle.setSelectedItem(Main.selectArticleWhereId(unProduit.getIdArticle()).getNomArticleFR());
        this.txtIdArticle.setText(unProduit.getIdArticle()+"");
        this.txtDateAjout.setValue(unProduit.getDateAjout());
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==this.btOK)
        {
            String mot=this.txtMot.getText();
            String matrice[][]=this.getLesProduits(Model.selectWhere(mot));
            unTableau.setDonnees(matrice);
        }
        if(e.getSource()==this.btAjouter)
        {
            int ok=1;
            for (int i = 0;i<this.getComponentCount();i++)
            {
                if(this.getComponent(i) instanceof JTextField)
                {
                    if(((JTextField)this.getComponent(i)).getText().equals(""))
                    {
                        ((JTextField)this.getComponent(i)).setBackground(Color.red);
                        ok=0;
                    }
                }

            }

            if (ok==1)
            {
                float prix=0,poids=0;
                int disponiblité = 0,idArticle=0;
                try{
                    prix=Float.parseFloat(this.txtPrixVar.getText());
                    poids=Float.parseFloat(this.txtPoidsVar.getText());
                    disponiblité=Integer.parseInt(this.txtDispoVar.getText());
                    idArticle=Integer.parseInt(this.txtIdArticle.getText());
                }
                catch (NumberFormatException exp)
                {
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);
                    ok=0;
                }
                if(prix>0 && poids>0 && idArticle>0 && disponiblité>=0 && disponiblité<=1 && ok==1)
                {
                        Calendar currenttime = Calendar.getInstance();
                        java.sql.Date sqlDate = new java.sql.Date((currenttime.getTime()).getTime());

                    Produit unProduit= new Produit(this.txtRefCommercial.getText(),this.txtRefFournisseur.getText(),this.txtNomVarFR.getText(),
                            this.txtNomVarEN.getText(),this.txtDescriptionVarFR.getText(),this.txtDescriptionVarEN.getText(),
                            disponiblité,poids,prix,idArticle,/*(Date) this.txtDateAjout.getValue()*/sqlDate);

                    //insertion du produit dans la base
                    Main.insertProduit(unProduit);

                    //mise à jour de la table
                    mettreAJourTable(Main.selectWhereProduit(unProduit));

                    JOptionPane.showMessageDialog(this,"Insertion réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);
                    //this.setVisible(false);

                }else{
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);

                }
            }
        }
        if(e.getSource()==this.btModifier)
        {
            int ok=1;
            for (int i = 0;i<this.getComponentCount();i++)
            {
                if(this.getComponent(i) instanceof JTextField)
                {
                    if(((JTextField)this.getComponent(i)).getText().equals(""))
                    {
                        ((JTextField)this.getComponent(i)).setBackground(Color.red);
                        ok=0;
                    }
                }

            }

            if (ok==1)
            {
                float prix=0,poids=0;
                int disponiblité = 0,idArticle=0;
                try{
                    prix=Float.parseFloat(this.txtPrixVar.getText());
                    poids=Float.parseFloat(this.txtPoidsVar.getText());
                    disponiblité=Integer.parseInt(this.txtDispoVar.getText());
                    idArticle=Integer.parseInt(this.txtIdArticle.getText());
                }
                catch (NumberFormatException exp)
                {
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);
                    ok=0;
                }
                if(prix>0 && poids>0 && idArticle>0 && disponiblité>=0 && disponiblité<=1 && ok==1)
                {
                    Produit unProduit= new Produit(this.txtRefCommercial.getText(),this.txtRefFournisseur.getText(),this.txtNomVarFR.getText(),
                            this.txtNomVarEN.getText(),this.txtDescriptionVarFR.getText(),this.txtDescriptionVarEN.getText(),
                            disponiblité,poids,prix,idArticle,(Date) this.txtDateAjout.getValue());

                    //Suppression de l'ancienne ligne de la table
                    int ligne;
                    ligne=uneTable.getSelectedRow();
                    String refCommercial=((String)unTableau.getValueAt(ligne,0));
                    unTableau.deleteTable(ligne);

                    //modification du produit dans la base
                    Main.updateProduit(unProduit);

                    //mise à jour de la table avec insertion de la nouvelle ligne (mise à jour)
                    mettreAJourTable(Main.selectWhereProduit(unProduit));

                    JOptionPane.showMessageDialog(this,"Modification réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);
                    //this.setVisible(false);



                }else{
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);

                }
            }
        }
        if (e.getSource()==this.btAnnuler)
        {
            this.txtDescriptionVarEN.setText("");
            this.txtDescriptionVarFR.setText("");

            this.txtNomVarFR.setText("");
            this.txtNomVarEN.setText("");
            this.txtRefCommercial.setText("");
            this.txtDispoVar.setText("");
            this.txtPoidsVar.setText("");
            this.txtPrixVar.setText("");
            this.txtRefFournisseur.setText("");
            this.txtIdArticle.setText("");
            this.txtDateAjout.setText("");
        }

    }
}
