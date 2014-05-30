/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pack1;

/**
 *
 * @author Admin
 */
import java.io.*;  
import java.awt.*;  
import java.io.File;
import java.io.IOException;
import java.util.Random; 
import java.io.FileInputStream;
import java.security.MessageDigest;
public class splitfile {
         public  void split(File f) throws IOException 
{
BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));
FileOutputStream out;
        String name = f.getName();
int partCounter = 1;
int sizeOfFiles = 1024*1024;// 1KB
byte[] buffer = new byte[sizeOfFiles];
int tmp = 0;
while ((tmp = bis.read(buffer)) > 0) {
            File newFile=new File(f.getParent()+"\\"+name+"."+String.format("%3d", partCounter++));
newFile.createNewFile();
out = new FileOutputStream(newFile);
out.write(buffer,0,tmp);
out.close();
        }
}
}