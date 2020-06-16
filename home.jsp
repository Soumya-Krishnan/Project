<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>       
        <br/><br/><br/><br/><br/>
        <center>
            <h2>
            <%
            String a=session.getAttribute("username").toString();
            out.println("Hello  "+a);
             response.setIntHeader("Refresh", 5);
            %>
            </h2>
            <br/>
            <br/>
            <br/><br/><br/><br/><br/>
        
            <p><a href="course.jsp">Go back to courses page</a></p>
            <p><a href="logout.jsp">Logout</a></p>
        </center>

    </body>
</html>