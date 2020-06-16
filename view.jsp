<%--@page contentType="text/html" pageEncoding="UTF-8"--%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //String a=session.getAttribute("Admin").toString();
            out.println("Hello  ");
            String adm=request.getParameter("Admin");
            String passq=request.getParameter("pass");
            String url="jdbc:postgresql://localhost:5432/Project";
            String user="postgres";
            String password="soumya";
            //if(adm=="karupa" & passq=="swamy")
            //{
               // session.setAttribute("Admin",adm);
               // response.sendRedirect("admincontrol.jsp");
            //}
            //else
            //{response.sendRedirect("adminpass.jsp");
            //}
            try {
                Connection connection;
                connection = DriverManager.getConnection(url, user, password);
                
                Statement stmt = connection.createStatement();
                ResultSet rs =stmt.executeQuery("select * from admin_details;");
                
                while(rs.next())
                    
                    { 
                        if((rs.getString("admin").equals(adm) && rs.getString("pwd").equals(passq)))
                        {
                            session.setAttribute("Admin",adm);
                           //response.sendRedirect("home.jsp");
                            response.sendRedirect("admincontrol.jsp");
                        }
                        if((rs.getString("admin").equals(adm) && !rs.getString("pwd").equals(passq)))
                        {  out.println("wrong password");
                           response.sendRedirect("adminpass.jsp");
                        
                        }
                       
                    }
                rs.close();
                connection.close();
            } 
                   catch (SQLException ex) 
                   {
                     out.println(ex.getMessage());        
                   } 
            %>
    </body>
</html>