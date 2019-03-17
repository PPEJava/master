package View;

import Controller.Main;
import Controller.Categorie;
import Controller.Tableau;
import Model.ModelCategorie;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;

public class PanelCategorie extends PanelCentral implements ActionListener {

        private JTable uneTable;
        private static Tableau unTableau;
        private JTextField txtMot=new JTextField();
        private JButton btOK=new JButton("OK");

        private static JPanel ajouter= new JPanel();

        private JTextField txtNomCategorieFR=new JTextField();
        private JTextField txtNomCategorieEN=new JTextField();
        private JButton btAnnuler = new JButton("Annuler");
        private JButton btAjouter = new JButton("Ajouter");
        private JButton btModifier = new JButton("Modifier");


        public PanelCategorie()
        {
            super();
            // Affichage des Catégories

            ArrayList<Categorie> lesCategories= ModelCategorie.selectAll();
            String entetes[]={"idCategorie","Nom FR","nom EN"};
            unTableau=new Tableau(this.getLesCategories(ModelCategorie.selectAll()),entetes);

            //this.uneTable=new JTable(this.getLesArticles(),entetes);
            this.uneTable=new JTable(unTableau);


            //on insère la table dans une scrollPan
            JScrollPane uneScroll=new JScrollPane(this.uneTable);
            uneScroll.setBounds(20,20,900,300);//relatif dans le panel
            this.add(uneScroll);



            this.ajouter.setLayout(new GridLayout(2,1));
            this.ajouter.setBounds(20,350,600,150);
            this.ajouter.add(new JLabel("Nom Article FR : "));
            this.ajouter.add(this.txtNomCategorieFR);
            this.ajouter.add(new JLabel("Nom Article EN : "));
            this.ajouter.add(this.txtNomCategorieEN);

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
                        int idCategorie=Integer.parseInt((String)unTableau.getValueAt(ligne, 0).toString());
                        ModifierChampsCategorie(Main.selectCategorieWhereId(idCategorie));


                    }
                    if(e.getClickCount()==2)
                    {
                        int retour=JOptionPane.showConfirmDialog(null,"Voulez-vous supprimer la catégorie d'articles?","Supprimer",
                                JOptionPane.YES_NO_OPTION);
                        if(retour==0)
                        {

                            ligne=uneTable.getSelectedRow();
                            int idCategorie=Integer.parseInt((String)unTableau.getValueAt(ligne, 0).toString());
                            unTableau.deleteTable(ligne);
                            Main.deleteCategorie(idCategorie);

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


        public static void mettreAJourTable(Categorie uneCategorie) {
            Object ligne[]={uneCategorie.getIdCategorie(),uneCategorie.getNomCategorieFR(),uneCategorie.getNomCategorieEN()};
            unTableau.insertTable(ligne);

        }

        public String [][]getLesCategories(ArrayList<Categorie>lesCategories)
        {

            String[][]matrice=new String [lesCategories.size()][3];
            int i=0;
            for(Categorie uneCategorie:lesCategories)
            {
                matrice[i][0]=uneCategorie.getIdCategorie()+"";
                matrice[i][1]=uneCategorie.getNomCategorieFR();
                matrice[i][2]=uneCategorie.getNomCategorieEN();
                i++;
            }
            return matrice;

        }

        public void ModifierChampsCategorie(Categorie uneCategorie)
        {
            this.txtNomCategorieFR.setText(uneCategorie.getNomCategorieFR());
            this.txtNomCategorieEN.setText(uneCategorie.getNomCategorieEN());
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            if(e.getSource()==this.btOK)
            {
                String mot=this.txtMot.getText();
                String matrice[][]=this.getLesCategories(ModelCategorie.selectWhere(mot));
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
                        Categorie uneCategorie= new Categorie(this.txtNomCategorieFR.getText(),this.txtNomCategorieEN.getText());

                        //insertion du produit dans la base
                        Main.insertCategorie(uneCategorie);

                        //mise àinsertArticle jour de la table
                        mettreAJourTable(Main.selectWhereCategorie(uneCategorie));

                        JOptionPane.showMessageDialog(this,"Insertion réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);
                        //this.setVisible(false);

                    }else{
                        JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);

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
                        int ligne;
                        ligne=uneTable.getSelectedRow();
                        int idCategorie=(Integer.parseInt((String) unTableau.getValueAt(ligne,0).toString()));
                        Categorie uneCategorie= new Categorie(idCategorie,this.txtNomCategorieFR.getText(),this.txtNomCategorieEN.getText());
                        unTableau.deleteTable(ligne);

                        //modification du produit dans la base
                        Main.updateCategorie(uneCategorie);

                        //mise à jour de la table avec insertion de la nouvelle ligne (mise à jour)
                        mettreAJourTable(Main.selectCategorieWhereId(idCategorie));

                        JOptionPane.showMessageDialog(this,"Modification réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);
                        //this.setVisible(false);



                    }else{
                        JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);

                    }

            }
            if (e.getSource()==this.btAnnuler)
            {
                this.txtNomCategorieFR.setText("");
                this.txtNomCategorieEN.setText("");
            }

        }




}
