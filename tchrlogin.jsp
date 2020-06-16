
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Logincheck</title>
    </head>
    <body>
        <%
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        
        
        
      
       
        Connection connection;
        String url = "jdbc:postgresql://localhost:5432/Project"; 
        String user = "postgres";
        String password = "soumya";
        response.setContentType("text/html;charset=UTF-8");
        try {        
            Class.forName("org.postgresql.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        } %>
        <!--<table border="1">
            <th></th>
            <th></th>-->
            
       <% this.log("message"); %>
        <%
        try {
                
                connection = DriverManager.getConnection(url, user, password);
                
                Statement stmt = connection.createStatement();
                ResultSet rs =stmt.executeQuery("select * from tchrdet;");
                
                while(rs.next())
                    
                    { 
                        if((rs.getString("username").equals(username) && rs.getString("password").equals(pass)))
                        {
                            session.setAttribute("username",username);
                           response.sendRedirect("tchrmain.jsp");
                           
                        }
                        if((rs.getString("username").equals(username) && !rs.getString("password").equals(pass)))
                        {  out.println("wrong password");
                           response.sendRedirect("tchrpass.jsp");
                        
                        }
                        else{
                            out.println("Username does not exist");
                        }
                       
                    }
                rs.close();
                connection.close();
            } 
                   catch (SQLException ex) 
                   {
                     out.println(ex.getMessage());        
                   }   
        %>  <!--</table>-->
        <%-- out.println(username); --%>
     
        <!--<a href="tchrlogin.html">Login</a>-->
    </body>
</html>