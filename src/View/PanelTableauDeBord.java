package View;

import Controller.Main;

import javax.swing.*;
import javax.swing.border.Border;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class PanelTableauDeBord extends PanelCentral implements ActionListener {
    private JLabel title=new JLabel();
    private JLabel nbCat=new JLabel();
    private JLabel nbArt=new JLabel();
    private JLabel nbFourn=new JLabel();

    private static JPanel presenter= new JPanel();
    private static JPanel articles= new JPanel();
    private static JPanel categories= new JPanel();
    private static JPanel fournisseur= new JPanel();


    public PanelTableauDeBord() {
        super();
        this.title.setText("Tableau de Bord");
        this.title.setBounds(10,400,900,150);
        Border cadre = BorderFactory.createTitledBorder("Tableau de bord" );
        this.setBorder(cadre);
        this.categories.add(new JLabel("Catégories"));
        this.categories.add(this.nbCat);
        this.nbCat.setText(""+ Main.CountNbCategorie());
        this.categories.setBackground(Color.yellow);

        this.articles.add(new JLabel("Articles"));
        this.articles.add(this.nbArt);
        this.nbArt.setText(""+ Main.CountNbArticle());
        this.articles.setBackground(Color.lightGray);

        this.fournisseur.add(new JLabel("Entreprises"));
        this.fournisseur.add(this.nbFourn);
        this.nbFourn.setText(""+ Main.CountNbFournisseur());
        this.fournisseur.setBackground(Color.orange);

        this.presenter.setLayout(new GridLayout(1,3));
        this.presenter.setBounds(20,20,800,100);
        this.presenter.add(this.categories);
        this.presenter.add(this.articles);
        this.presenter.add(this.fournisseur);

        /*
        this.presenter.add(new JLabel("Articles"));
        this.presenter.add(new JLabel("Entreprises"));

        this.presenter.add(this.nbCat);
        this.nbCat.setText(""+ Main.CountNbCategorie());
        this.presenter.add(this.nbArt);
        this.nbArt.setText(""+ Main.CountNbArticle());
        this.presenter.add(this.nbFourn);
        this.nbFourn.setText(""+ Main.CountNbFournisseur());

*/






        this.add(this.presenter);




    }

    @Override
    public void actionPerformed(ActionEvent e) {

    }
}
