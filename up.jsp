<%-- 
    Document   : index
    Created on : 23 Dec, 2013, 10:32:12 AM
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
        <HTML>
<HEAD>
<TITLE>Display file upload form to the user</TITLE>
</HEAD>
<BODY>
<FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
<br>
<br>
<br>
<center>
<table border="0" bgcolor=#ccFDDEE>
      <tr>
            <center>
            <td colspan="2" align="center"><B>UPLOAD THE FILE</B>
            <center>
            </td>
      </tr>
      <tr>
            <td colspan="2" align="center"></td>
      </tr>
      <tr>
            <td><b>Choose the file To Upload:</b></td>
            <td><INPUT NAME="f1" TYPE="file"></td>
      </tr>
      <tr>
            <td colspan="2" align="center"></td>
      </tr>
      <tr>
            <td colspan="2" align="center"><input type="submit"
                  value="Send File"></td>
      </tr>
      </table>
            </center>
            </FORM>
</BODY>
</HTML>
    </body>
</html>
