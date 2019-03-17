package View;

import Controller.SousCategorie;
import Controller.Main;
import Controller.Tableau;
import Model.ModelSousCategorie;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;

public class PanelSousCategorie extends PanelCentral implements ActionListener {

        private JTable uneTable;
        private static Tableau unTableau;
        private JTextField txtMot=new JTextField();
        private JButton btOK=new JButton("OK");

        private static JPanel ajouter= new JPanel();

        private JTextField txtNomSousCategorieFR=new JTextField();
        private JTextField txtNomSousCategorieEN=new JTextField();
        private JTextField txtIdCategorie=new JTextField();
        private JButton btAnnuler = new JButton("Annuler");
        private JButton btAjouter = new JButton("Ajouter");
        private JButton btModifier = new JButton("Modifier");


        public PanelSousCategorie()
        {
            super();
            // Affichage des SousCatégories

            ArrayList<SousCategorie> lesSousCategories= ModelSousCategorie.selectAll();
            String entetes[]={"idSousCategorie","Nom FR","nom EN","idCategorie"};
            unTableau=new Tableau(this.getLesSousCategories(ModelSousCategorie.selectAll()),entetes);

            //this.uneTable=new JTable(this.getLesArticles(),entetes);
            this.uneTable=new JTable(unTableau);


            //on insère la table dans une scrollPan
            JScrollPane uneScroll=new JScrollPane(this.uneTable);
            uneScroll.setBounds(20,20,900,300);//relatif dans le panel
            this.add(uneScroll);



            this.ajouter.setLayout(new GridLayout(3,1));
            this.ajouter.setBounds(20,350,600,150);
            this.ajouter.add(new JLabel("Nom Article FR : "));
            this.ajouter.add(this.txtNomSousCategorieFR);
            this.ajouter.add(new JLabel("Nom Article EN : "));
            this.ajouter.add(this.txtNomSousCategorieEN);
            this.ajouter.add(new JLabel("idCatégorie"));
            this.ajouter.add(this.txtIdCategorie);

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
                        int idSousCategorie=Integer.parseInt((String)unTableau.getValueAt(ligne, 0).toString());
                        ModifierChampsSousCategorie(Main.selectSousCategorieWhereId(idSousCategorie));


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


        public static void mettreAJourTable(SousCategorie uneSousCategorie) {
            Object ligne[]={uneSousCategorie.getIdSousCategorie(),uneSousCategorie.getNomSousCategorieFR(),uneSousCategorie.getNomSousCategorieEN(),
                    uneSousCategorie.getIdCategorie()};
            unTableau.insertTable(ligne);

        }

        public String [][]getLesSousCategories(ArrayList<SousCategorie>lesSousCategories)
        {

            String[][]matrice=new String [lesSousCategories.size()][4];
            int i=0;
            for(SousCategorie uneSousCategorie:lesSousCategories)
            {
                matrice[i][0]=uneSousCategorie.getIdSousCategorie()+"";
                matrice[i][1]=uneSousCategorie.getNomSousCategorieFR();
                matrice[i][2]=uneSousCategorie.getNomSousCategorieEN();
                matrice[i][3]=uneSousCategorie.getIdCategorie()+"";
                i++;
            }
            return matrice;

        }

        public void ModifierChampsSousCategorie(SousCategorie uneSousCategorie)
        {
            this.txtNomSousCategorieFR.setText(uneSousCategorie.getNomSousCategorieFR());
            this.txtNomSousCategorieEN.setText(uneSousCategorie.getNomSousCategorieEN());
            this.txtIdCategorie.setText(uneSousCategorie.getIdCategorie()+"");
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            if(e.getSource()==this.btOK)
            {
                String mot=this.txtMot.getText();
                String matrice[][]=this.getLesSousCategories(ModelSousCategorie.selectWhere(mot));
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
                    int idCategorie=0;
                    try{
                        idCategorie=Integer.parseInt(this.txtIdCategorie.getText());
                    }
                    catch (NumberFormatException exp)
                    {
                        JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);
                        ok=0;
                    }
                    if(idCategorie>0 && ok==1)
                    {
                        SousCategorie uneSousCategorie= new SousCategorie(this.txtNomSousCategorieFR.getText(),this.txtNomSousCategorieEN.getText(),idCategorie);

                        //insertion du produit dans la base
                        Main.insertSousCategorie(uneSousCategorie);

                        //mise àinsertArticle jour de la table
                        mettreAJourTable(Main.selectWhereSousCategorie(uneSousCategorie));

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
                    int idCategorie=0;
                    try{
                        idCategorie=Integer.parseInt(this.txtIdCategorie.getText());
                    }
                    catch (NumberFormatException exp)
                    {
                        JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);
                        ok=0;
                    }
                    if(idCategorie>0 && ok==1)
                    {
                        int ligne;
                        ligne=uneTable.getSelectedRow();
                        int idSousCategorie=(Integer.parseInt((String) unTableau.getValueAt(ligne,0).toString()));
                        SousCategorie uneSousCategorie= new SousCategorie(idSousCategorie,this.txtNomSousCategorieFR.getText(),this.txtNomSousCategorieEN.getText(),idCategorie);
                        unTableau.deleteTable(ligne);

                        //modification du produit dans la base
                        Main.updateSousCategorie(uneSousCategorie);

                        //mise à jour de la table avec insertion de la nouvelle ligne (mise à jour)
                        mettreAJourTable(Main.selectSousCategorieWhereId(idSousCategorie));

                        JOptionPane.showMessageDialog(this,"Modification réalisée avec succès","Information",JOptionPane.INFORMATION_MESSAGE);
                        //this.setVisible(false);



                    }else{
                        JOptionPane.showMessageDialog(this,"Erreur de saisie des nombres ","Erreur",JOptionPane.ERROR_MESSAGE);

                    }
                }
            }
            if (e.getSource()==this.btAnnuler)
            {
                this.txtNomSousCategorieFR.setText("");
                this.txtNomSousCategorieEN.setText("");

                this.txtIdCategorie.setText("");
            }

        }


}
