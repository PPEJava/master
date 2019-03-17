package View;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;

public abstract class PanelCentral extends JPanel
{

    protected Font unePolice= new Font ("Arial",Font.ITALIC,18);

    public PanelCentral()
    {
        this.setBounds(250,80,1000,650);
        this.setLayout(null);
        this.setBackground(Color.GRAY);

        this.setVisible(false);

    }

    public Font getUnePolice() {
        return unePolice;
    }

    public void setUnePolice(Font unePolice) {
        this.unePolice = unePolice;
    }


}
