/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pack1;

/**
 *
 * @author Admin
 */
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import java.io.*;
import java.net.*;
public class filechoose extends JFrame implements ActionListener
{
   JFileChooser jc;
   JButton b1,b2,b3,b4;
   JTextField jt,jt1,jt3;
   JLabel l1,l2,l3;
   Container con;
   String ss1,ss2,ss3;
  public filechoose()
  {
     b1 = new JButton("choose file"); 
     b2 = new JButton("hash a file"); 
 //   b3 = new JButton("send hash value to server");
     //b4= new JButton(icon aa);
     con = this.getContentPane();
     l1 = new JLabel("file name");
  //   l2 = new JLabel("give URL");
     l3 = new JLabel("hash value");
     
     jt = new JTextField(30);
  //    jt1 = new JTextField(100);
     jt3 = new JTextField(100); 
     con.setLayout(null);
     l1.setBounds(100,100,200,20);
  //   l2.setBounds(100,300,200,20);
//      jt1.setBounds(300,300,300,20);
     jt.setBounds(350,100,200,20);
     b1.setBounds(600,100,200,20);
     b2.setBounds(100,200,200,20);
  //   b3.setBounds(700,300,200,20);
     l3.setBounds(100,400,200,20);
     jt3.setBounds(300,400,300,20);
     con.add(l1);
     con.add(jt);
     con.add(b1);
     con.add(b2);
  //   con.add(b3);
 //    con.add(l2);
//     con.add(jt1);
     con.add(l3);
     con.add(jt3);
     b1.addActionListener(this);
     b2.addActionListener(this);
 //    b3.addActionListener(this);
     this.setDefaultCloseOperation(EXIT_ON_CLOSE);
     
     
  }

    public void actionPerformed(ActionEvent e)
    {
      if (e.getSource()==b1)
      {
      jc = new JFileChooser();
      jc.showDialog(this,"choose a file");
      File ff=jc.getSelectedFile();
      ss1 = ff.getPath();
      jt.setText(ss1);
     }
      if (e.getSource()==b2)
      {
          ss2=jt.getText();
          //-----call hashing module---------------------------//
          hashfile hf;
          hf = new hashfile();
          ss3=hf.hash(ss1);
          jt3.setText(ss3);
      }
  /*    if (e.getSource()==b3)
      {
        java.awt.Desktop dt =  java.awt.Desktop.getDesktop();
        try
        {
        String ss3=jt1.getText();    
        URI uu = new URI(ss3);
        dt.browse(uu);
        }catch(Exception ee)
        {
            l1.setText(ee.toString());
        }
      }*/
    }
}
