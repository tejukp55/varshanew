<%-- 
    Document   : compare
    Created on : 2 Apr, 2014, 9:43:45 AM
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
        <%@page import="java.io.*"%>
        <%!
          String ss1,ss2,ss3;
        
        %>
        <%
          BufferedReader bf = new BufferedReader(new FileReader("d:\\splitfiles\\new.txt"));
          while(true)
              {
              ss2=bf.readLine();
              if (ss2==null)
                  break;
              ss3=ss2;
              }
          ss1=request.getParameter("q1");
          if (ss1.equals(ss3))
              {
              out.println("files are correct");
              }
          else
              {
              out.println("files are not correct");
              }
        %>
    </body>
</html>
