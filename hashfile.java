/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pack1;
import java.io.File;
import java.io.IOException;
import java.util.Random; 
import java.io.FileInputStream;
import java.security.MessageDigest;
import pack1.splitfile;
import java.io.*;
        
/**
 *
 * @author Admin
 */
public class hashfile 
{
             String ssss;
              public String hash(String sss)
              {
                   try
        {
        MessageDigest md = MessageDigest.getInstance("MD5");
	// File f1=new File("E:w1/Wildlife.wmv");
        File f1=new File(sss);
         splitfile mm = new splitfile();
         mm.split(f1);
        //splitFile(f1);
	int ra;
	  String pa,p1;
	  String s1;
	
	    Random rand = new Random(); 
	
	// System.out.printf("%d ",rand.nextInt(40));
	ra=rand.nextInt(27);
	System.out.printf("%d\n ",ra);
	
	//  pa="E:w2/Wildlife.wmv";
	
	  s1=f1+". "+ra;
	
	System.out.printf(s1);
        //	splitFile(new File(pa));

//// 	 hash.....
//	String filename = "E:w2/Wildlife.wmv"; 
//	File f1=new File("E:w2/Wildlife.wmv");
              
	//File file = new File("E:Wildlife.wmv");
        File file = new File(sss);
	FileInputStream fis = new FileInputStream(file);
//  FileInputStreamfis = new FileInputStream("E:w2/Wildlife20.wmv");

byte[] dataBytes = new byte[1024];

int nread = 0; 
while ((nread = fis.read(dataBytes)) != -1)
{
md.update(dataBytes, 0, nread);
     }
byte[] mdbytes = md.digest();

//convert the byte to hex format method 1
StringBuffer sb = new StringBuffer();
for (int i = 0; i <mdbytes.length; i++) {
sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
     }

System.out.println("\nDigest(in hex format):: " + sb.toString());
BufferedWriter bf=new BufferedWriter(new FileWriter("e:\\splitfiles\\new.txt"));
bf.write(sb.toString());
bf.newLine();
bf.close();
sss= sb.toString();

        }catch(Exception ee)
        {
            System.out.println(ee.toString());
        }
           return sss;       
              }
}

