
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <center>
            <h2>Signin Details</h2>
            <form action="logincheck.jsp" method="post">
            <br/>Username:<input type="text" name="username">
            <br/>Password:<input type="password" name="pass">
            <br/><input type="submit" value="Submit">
            </form>
            <a href="register.html">Sign up</a>
           
        </center>
    </body>
</html>-->


<html>
<head>
<meta charset="utf-8">
<title>student page</title>
<link rel="stylesheet" type="text/css" href="css.css"/>

<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet"> 
</head>
<body id="bg">
	<img src="1.png" />
	<img id="sml" src="smiley.gif" height="200" width="150"/>
	<div id="body_area">
	
	<p class="bld">Login details</p>
	<form method="post" action="logincheck.jsp">
	<p id="cred">Username:
		<input type="text" name="username"></p>
	<p id="cred">Password:
		<input type="password" name="pass" ></p>
	<p><button class="w3-btn w3-black sp2 ft" type="submit">Login</button>
	<button class="w3-btn w3-black sp2 ft" type="reset">Cancel</button></p>
	<p></p>
	<p>New User?
            <a href="register.html">Register here</a></p>
        <p><a href="admin.jsp">Admin Sign up</a>
	</p>
	</form>
	</div>
</body>
</html>	
