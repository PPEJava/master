package View;
import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import Controller.Main;
import Controller.User;

public class PrincipalView extends JFrame implements ActionListener {
	private JButton btQuitter = new JButton("Quitter");
	private JPanel panelProfil = new JPanel();
    private JButton btArticles=new JButton("Articles");
    private JButton btVarArticles=new JButton("Variantes Articles");
    private JButton btSousCategorie=new JButton("Sous Catégories");
    private JButton btCategorie=new JButton("Catégories");
    private JButton btTableauDeBord=new JButton("Tableau de Bord");



	private static PanelArticle unPanelArticle= new PanelArticle();
    private static PanelLister unPanelVarArticles=new PanelLister();
    private static PanelSousCategorie unPanelSousCategorie=new PanelSousCategorie();
    private static PanelCategorie unPanelCategorie=new PanelCategorie();
    private static PanelTableauDeBord unPanelTableauDeBord=new PanelTableauDeBord();

	private static JPanel menu= new JPanel();

	public PrincipalView(User unUserConnecte) { //passage de l'user connecter a travers le constructeur
		this.setTitle("Administration de FTFI");
        this.setBounds(200,200,1300,800);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.getContentPane().setBackground(Color.darkGray);
        this.setResizable(false);
        this.setLayout(null);
        
        //construire Panel Profil
        this.panelProfil.setBounds(10,10,130,100);
        this.panelProfil.setBackground(Color.gray);
        this.panelProfil.setLayout(new GridLayout(3,1));
        this.panelProfil.add(new JLabel("Nom Admin:" + unUserConnecte.getNom()));
        this.panelProfil.add(new JLabel("Prénom :" + unUserConnecte.getPrenom()));

        this.panelProfil.add(this.btTableauDeBord);
        this.btTableauDeBord.addActionListener(this);
        this.add(unPanelTableauDeBord);
        
        
        this.add(this.panelProfil);

        this.menu.setLayout(new GridLayout(1,4));
        this.menu.setBounds(250,10,550,30);
        this.menu.add(this.btCategorie);
        this.menu.add(this.btSousCategorie);
        this.menu.add(this.btArticles);
        this.menu.add(this.btVarArticles);



        this.add(this.menu);

        this.btSousCategorie.addActionListener(this);
        this.add(unPanelSousCategorie);
        this.btArticles.addActionListener(this);
        this.add(unPanelArticle);
        this.btVarArticles.addActionListener(this);
        this.add(unPanelVarArticles);
        this.btCategorie.addActionListener(this);
        this.add(unPanelCategorie);


        this.btQuitter.setBounds(10,200,100,20);
        this.add(this.btQuitter);
        this.btQuitter.addActionListener(this);
        
        
        this.setVisible(false);


        unPanelTableauDeBord.setVisible(true);

        
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		switch (e.getActionCommand()) {
			case "Quitter": 
				if (JOptionPane.showConfirmDialog(this,"Voulez-vous quitter?","Quitter l'application", JOptionPane.YES_NO_CANCEL_OPTION)==0); 
			{
				Main.getPrincipalView().dispose();
				Main.getLoginView().setVisible(true);
			}
			    break;
            case "Articles":
                unPanelTableauDeBord.setVisible(false);
                unPanelVarArticles.setVisible(false);
                unPanelSousCategorie.setVisible(false);
                unPanelCategorie.setVisible(false);
                unPanelArticle.setVisible(true);

                break;
            case "Variantes Articles":
                unPanelTableauDeBord.setVisible(false);
                unPanelArticle.setVisible(false);
                unPanelSousCategorie.setVisible(false);
                unPanelCategorie.setVisible(false);
                unPanelVarArticles.setVisible(true);
                break;

            case "Sous Catégories":
                unPanelTableauDeBord.setVisible(false);
                unPanelVarArticles.setVisible(false);
                unPanelArticle.setVisible(false);
                unPanelCategorie.setVisible(false);
                unPanelSousCategorie.setVisible(true);
                break;

            case "Catégories":
                unPanelTableauDeBord.setVisible(false);
                unPanelArticle.setVisible(false);
                unPanelSousCategorie.setVisible(false);
                unPanelVarArticles.setVisible(false);
                unPanelCategorie.setVisible(true);
                break;
            case "Tableau de Bord":
                unPanelArticle.setVisible(false);
                unPanelSousCategorie.setVisible(false);
                unPanelVarArticles.setVisible(false);
                unPanelCategorie.setVisible(false);
                unPanelTableauDeBord.setVisible(true);
		}	
	}
}
