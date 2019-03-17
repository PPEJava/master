package View;

import Controller.Article;
import Controller.Main;
import Controller.Tableau;
import Model.ModelArticle;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;

public class PanelArticle extends PanelCentral implements ActionListener {

        private JTable uneTable;
        private static Tableau unTableau;
        private JTextField txtMot=new JTextField();
        private JButton btOK=new JButton("OK");

        private static JPanel ajouter= new JPanel();

        private JTextField txtNomArticleFR=new JTextField();
        private JTextField txtNomArticleEN=new JTextField();
        private JTextField txtDesArticleFR=new JTextField();
        private JTextField txtDesArticleEN=new JTextField();
        private JTextField txtIdSousCategorie=new JTextField();
        private JTextField txtIdFournisseur=new JTextField();
        private JButton btAnnuler = new JButton("Annuler");
        private JButton btAjouter = new JButton("Ajouter");
        private JButton btModifier = new JButton("Modifier");


    public PanelArticle()
        {
            super();
            // Affichage des articles

            ArrayList<Article> lesarticles= ModelArticle.selectAll();
            String entetes[]={"idArticle","Nom FR","nom EN","Description FR",
                    "description EN","idSousCatégorie","idFournisseur"};
            unTableau=new Tableau(this.getLesArticles(ModelArticle.selectAll()),entetes);

            //this.uneTable=new JTable(this.getLesArticles(),entetes);
            this.uneTable=new JTable(unTableau);


            //on insère la table dans une scrollPan
            JScrollPane uneScroll=new JScrollPane(this.uneTable);
            uneScroll.setBounds(20,20,900,300);//relatif dans le panel
            this.add(uneScroll);



            this.ajouter.setLayout(new GridLayout(6,1));
            this.ajouter.setBounds(20,350,600,200);
            this.ajouter.add(new JLabel("Nom Article FR : "));
            this.ajouter.add(this.txtNomArticleFR);
            this.ajouter.add(new JLabel("Nom Article EN : "));
            this.ajouter.add(this.txtNomArticleEN);
            this.ajouter.add(new JLabel("Nom Description Article FR :"));
            this.ajouter.add(this.txtDesArticleFR);
            this.ajouter.add(new JLabel("Nom Description Article EN : "));
            this.ajouter.add(this.txtDesArticleEN);
            this.ajouter.add(new JLabel("id Sous Catégorie : "));
            this.ajouter.add(this.txtIdSousCategorie);
            this.ajouter.add(new JLabel("id Fournisseur : "));
            this.ajouter.add(this.txtIdFournisseur);

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
                        int idArticle=Integer.parseInt((String)unTableau.getValueAt(ligne, 0).toString());
                        ModifierChampsArticle(Main.selectArticleWhereId(idArticle));


                    }
                    if(e.getClickCount()==2)
                    {
                        int retour=JOptionPane.showConfirmDialog(null,"Voulez-vous supprimer la catégorie d'articles?","Supprimer",
                                JOptionPane.YES_NO_OPTION);
                        if(retour==0)
                        {

                            ligne=uneTable.getSelectedRow();
                            int idArticle=Integer.parseInt((String)unTableau.getValueAt(ligne, 0).toString());
                            unTableau.deleteTable(ligne);
                            Main.deleteArticle(idArticle);

                            JOptionPane.showMessageDialog(null,"Suppression réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);

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


        public static void mettreAJourTable(Article unArticle) {
        Object ligne[]={unArticle.getIdArticle(),unArticle.getNomArticleFR(),unArticle.getNomArticleEN(),
                unArticle.getDescriptionArticleFR(),unArticle.getDescriptionArticleEN(),unArticle.getIdSousCategorie(),
                unArticle.getIdFournisseur()};
        unTableau.insertTable(ligne);

    }

        public String [][]getLesArticles(ArrayList<Article>lesArticles)
        {

            String[][]matrice=new String [lesArticles.size()][7];
            int i=0;
            for(Article unArticle:lesArticles)
            {
                matrice[i][0]=unArticle.getIdArticle()+"";
                matrice[i][1]=unArticle.getNomArticleFR();
                matrice[i][2]=unArticle.getNomArticleEN();
                matrice[i][3]=unArticle.getDescriptionArticleFR();
                matrice[i][4]=unArticle.getDescriptionArticleEN();
                matrice[i][5]=unArticle.getIdSousCategorie()+"";
                matrice[i][6]=unArticle.getIdFournisseur()+"";
                i++;
            }
            return matrice;

        }

        public void ModifierChampsArticle(Article unArticle)
        {
            this.txtNomArticleFR.setText(unArticle.getNomArticleFR());
            this.txtNomArticleEN.setText(unArticle.getNomArticleEN());
            this.txtDesArticleFR.setText(unArticle.getDescriptionArticleFR());
            this.txtDesArticleEN.setText(unArticle.getDescriptionArticleEN());
            this.txtIdSousCategorie.setText(unArticle.getIdSousCategorie()+"");
            this.txtIdFournisseur.setText(unArticle.getIdFournisseur()+"");
        }

        @Override
        public void actionPerformed(ActionEvent e) {
        if(e.getSource()==this.btOK)
        {
            String mot=this.txtMot.getText();
            String matrice[][]=this.getLesArticles(ModelArticle.selectWhere(mot));
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
                int idFournisseur=0,idSousCategorie=0;
                try{
                    idFournisseur=Integer.parseInt(this.txtIdFournisseur.getText());
                    idSousCategorie=Integer.parseInt(this.txtIdSousCategorie.getText());
                }
                catch (NumberFormatException exp)
                {
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);
                    ok=0;
                }
                if(idFournisseur>0 && idSousCategorie>0 && ok==1)
                {
                    Article unArticle= new Article(this.txtNomArticleFR.getText(),this.txtNomArticleEN.getText(),this.txtDesArticleFR.getText(),
                            this.txtDesArticleEN.getText(),idSousCategorie,idFournisseur);

                    //insertion du produit dans la base
                    Main.insertArticle(unArticle);

                    //mise àinsertArticle jour de la table
                    mettreAJourTable(Main.selectWhereArticle(unArticle));

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
                int idFournisseur=0,idSousCategorie=0;
                try{
                    idFournisseur=Integer.parseInt(this.txtIdFournisseur.getText());
                    idSousCategorie=Integer.parseInt(this.txtIdSousCategorie.getText());
                }
                catch (NumberFormatException exp)
                {
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);
                    ok=0;
                }
                if(idFournisseur>0 && idSousCategorie>0 && ok==1)
                {


                    //Suppression de l'ancienne ligne de la table
                    int ligne;
                    ligne=uneTable.getSelectedRow();
                    int idArticle=(Integer.parseInt((String) unTableau.getValueAt(ligne,0).toString()));

                    Article unArticle= new Article(idArticle,this.txtNomArticleFR.getText(),this.txtNomArticleEN.getText(),this.txtDesArticleFR.getText(),
                            this.txtDesArticleEN.getText(),idSousCategorie,idFournisseur);

                    unTableau.deleteTable(ligne);

                    //modification du produit dans la base
                    Main.updateArticle(unArticle);

                    //mise à jour de la table avec insertion de la nouvelle ligne (mise à jour)
                    mettreAJourTable(Main.selectArticleWhereId(idArticle));

                    JOptionPane.showMessageDialog(this,"Modification réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);
                    //this.setVisible(false);



                }else{
                    JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);

                }
            }
        }
        if (e.getSource()==this.btAnnuler)
        {
            this.txtNomArticleFR.setText("");
            this.txtNomArticleEN.setText("");

            this.txtDesArticleFR.setText("");
            this.txtDesArticleEN.setText("");
            this.txtIdSousCategorie.setText("");
            this.txtIdFournisseur.setText("");
        }

    }
    }
