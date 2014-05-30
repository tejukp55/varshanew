<%-- 
    Document   : upload
    Created on : 23 Dec, 2013, 5:13:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ page import="java.io.*,java.sql.*"%>
<%!
    Connection con;
    Statement st;
    int num;
    ResultSet rs;
    String sql,sql1;
%>
<%
    try
            {
        
             /*   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                con=DriverManager.getConnection("jdbc:odbc:file","root","");
                st=con.createStatement();
                sql="select max(fnum) from file";
                rs=st.executeQuery(sql);
                while(rs.next())
                {
                    num=rs.getInt(1);
                }
                num++;*/
      String saveFile = "";
      String contentType = request.getContentType();
      out.println(contentType);
      if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
           
            int formDataLength = request.getContentLength();
            
            byte dataBytes[] = new byte[formDataLength];
            
            int byteRead = 0;
            int totalBytesRead = 0;
            while (totalBytesRead < formDataLength) {
                  byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                  totalBytesRead += byteRead;
            }
           
            String file = new String(dataBytes);
            
            saveFile = file.substring(file.indexOf("filename=\"") + 10);
            
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
          
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            saveFile = "E:/varshabvb2/web/" + saveFile;
            File ff = new File(saveFile);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
            fileOut.flush();
            fileOut.close();
%><Br>
<table border="2">
      <tr>
            <td><b>You have successfully upload the file by the name of:</b>
            <%
                  out.println(saveFile);
                  sql1="insert into file values("+num+",'"+saveFile+"')";
                 // st.executeUpdate(sql1);
                  %>
                  <br
                  <%
                  out.println("\n Record saved");
                  }
      }
    catch(Exception e)
            {
        out.println(e.toString());
    }
            %>
            </td>
      </tr>
</table>
    </body>
</html>
