<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>        
<%@ page import="javax.servlet.*" %>       
      <%  Connection connection;
        String url = "jdbc:postgresql://localhost:5432/Project"; 
        String user = "postgres";
        String password = "soumya";
        response.setContentType("text/html;charset=UTF-8");
        try {        
            Class.forName("org.postgresql.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        }    
        try {
                String username = request.getParameter("username");
                String sub =request.getParameter("class");
                String name = request.getParameter("name");
                String pass = request.getParameter("pass");
                String phone = request.getParameter("phone");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                //out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("INSERT INTO tchrdet(username,password,name_,sub,phone) VALUES ('"+username+"','"+pass+"','"+name+"','"+sub+"',"+phone+")");
                if(i==1)
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Record added successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=tchrlogin.html");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>