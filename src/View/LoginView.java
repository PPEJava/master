package View;

import javax.swing.*;

import Controller.Main;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class LoginView extends JFrame implements ActionListener, KeyListener{

    private JPanel jPanel = new JPanel();
    private JTextField emailField = new JTextField();
    private JPasswordField passwordField = new JPasswordField();
    private JButton loginButton = new JButton("Se connecter");
    private JButton cancelButton = new JButton("Annuler");


    public LoginView(){
        this.setTitle("Administration de FTFI");
        this.setBounds(200,200,900,300);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.getContentPane().setBackground(Color.darkGray);
        this.setResizable(false);
        this.setLayout(null);

        this.jPanel.setBounds(350,40,500,200);
        this.jPanel.setBackground(Color.darkGray);
        this.jPanel.setLayout(new GridLayout(3,2));

        this.jPanel.add(new JLabel("Email"));
        this.jPanel.add(this.emailField);
        this.jPanel.add(new JLabel("Mot de passe"));
        this.jPanel.add(this.passwordField);
        this.jPanel.add(this.loginButton);
        this.jPanel.add(this.cancelButton);

        Font unePolice = new Font("Arial", Font.ITALIC, 20);

        // changement de police pour tout les objets du panel
        for(int i = 0 ; i < this.jPanel.getComponentCount(); i++)
        {
            this.jPanel.getComponent(i).setFont(unePolice);
        }



        ImageIcon uneImage = new ImageIcon("images/ftfi_logo.jpg");
        JLabel monImage = new JLabel(uneImage);
        monImage.setBounds(20,0,300,240);
        this.add(monImage);


        this.add(this.jPanel);

        //Rendre les boutons utilisables 

        this.cancelButton.addActionListener(this);
        this.loginButton.addActionListener(this);
        this.emailField.addKeyListener(this);
        this.passwordField.addKeyListener(this);

        this.setVisible(true);

    }


    @Override
    public void keyTyped(KeyEvent e) {
        // TODO Auto-generated method stub

    }


    @Override
    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_ENTER) {
            String email = this.emailField.getText();
            String mdp = new String (this.passwordField.getPassword());
            Main.verifConnexion(email,mdp);
            this.emailField.setText("");
            this.passwordField.setText("");
        }

    }


    @Override
    public void keyReleased(KeyEvent e) {
        // TODO Auto-generated method stub

    }


    @Override
    public void actionPerformed(ActionEvent e) {
        switch (e.getActionCommand())
        {
            case"Annuler" :
                this.emailField.setText("");
                this.passwordField.setText("");
                break;
            case"Se connecter" :
                String email = this.emailField.getText();
                String password = new String (this.passwordField.getPassword());
                Main.verifConnexion(email,password);
                break;
        }

    }
}
