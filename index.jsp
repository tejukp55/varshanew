<%-- 
    Document   : index
    Created on : 2 Apr, 2014, 9:49:31 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pack1.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           filechoose mm;
           mm = new filechoose();
           mm.setSize(700,700);
           mm.setVisible(true);
        
        
        %>
    </body>
</html>
