package Controller;

import javax.swing.table.AbstractTableModel;

public class Tableau extends AbstractTableModel {


    private Object donnees[][];
    private String entetes[];

    public Tableau(Object donnees [][],String entetes [])
    {
        this.donnees=donnees;
        this.entetes=entetes;
    }
    @Override
    public int getColumnCount() {
        return this.entetes.length;
    }

    @Override
    public int getRowCount() {
        return this.donnees.length;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        return this.donnees[rowIndex][columnIndex];
    }

    @Override
    public String getColumnName(int column) {
        return this.entetes[column];
    }

    @Override
    public Class<?> getColumnClass(int columnIndex) {
        return this.entetes[columnIndex].getClass();
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return false;
    }

    @Override
    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {
        this.donnees[rowIndex][columnIndex]=aValue;
    }

    public void insertTable(Object ligne[])
    {
        Object matrice[][]=new Object[this.donnees.length+1][this.entetes.length];
        for (int i=0;i<this.donnees.length;i++)
        {
            matrice[i]=this.donnees[i];
        }
        matrice[this.donnees.length]=ligne;
        this.donnees=matrice;
        this.fireTableDataChanged();
    }

    public void deleteTable(int ligne)
    {
        Object matrice[][]=new Object[this.donnees.length-1][this.entetes.length];
        int j=0;
        for (int i=0;i<this.donnees.length;i++)
        {
            if(i != ligne)
            {
                matrice[j]=this.donnees[i];
                j++;
            }
        }
        this.donnees=matrice;
        this.fireTableDataChanged();
    }

    public void updateTable(Object ligne[],int indiceLigne)
    {
        Object matrice[][]=new Object[this.donnees.length][this.entetes.length];
        for (int i=0;i<this.donnees.length;i++)
        {
            if(i == indiceLigne)
            {
                matrice[i]=ligne;
            }else{
                matrice[i]=this.donnees[i];
        }
        this.donnees=matrice;
        this.fireTableDataChanged();
        }
    }

    public void setDonnees(String[][] matrice) {
        this.donnees=matrice;
        this.fireTableDataChanged();
    }
}
