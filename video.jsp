<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>video</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
/* Header/logo Title */
.header {
  padding: 5px;
  text-align: center;
  background: #1abc9c;
  color: white;
}
/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}
/* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
.navbar {
  overflow: hidden;
  background-color: #333;
  position: static;
  position: -webkit-sticky;
  top: 0;
}
/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
/* Right-aligned link */
.navbar a.right {
  float: right;
}
/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}
/* Column container */
.row {  
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
}
/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  -ms-flex: 20%; /* IE10 */
  flex: 18%;
  background-color: #f1f1f1;
  padding: 20px;overflow:scroll;
}
/* Main column */
.main {   
  -ms-flex: 90%; /* IE10 */
  flex: 40%;
  background-color: white;
  padding: 20px;
}
/* Fake image, just for this example */
.fakeimg {
  background-color: #aaa;
  width: 100%;height:50%;
  padding : 20px;
}
/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
}
/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 1000px) {
  .row {   
    flex-direction: column;
  }
}
/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 1000px) {
  .navbar a {
    float: none;
    width: 100%;
  }
}
</style>
</head>
<body>

<div class="header">
  <h1>My Course </h1>
  
</div>

<div class="navbar">
  <a href="course.jsp" class="active">HOME</a>
  <a href="quiz.jsp">QUIZ</a>
  <a href="#">ASSIGNMENT</a>

  <a href="logout.jsp" class="right">LOGOUT</a>
</div>

<div class="row">
  <div class="side">
    <!--<h2>About Me</h2>
    <h5>Photo of me:</h5>
    <div class="fakeimg" style="height:200px;">Image</div>
    <p>Some text about me in culpa qui officia deserunt mollit anim..</p>-->
    <h3>Modules</h3>
    <!--<p>Lorem ipsum dolor sit ame.</p>-->
    <div>
        <ul>
    	<li><details>
			<summary>MODULE 1</summary>
				<p>Note 1</p>
				<p>Note 2</p>
				<p>Note 3</p>
		    </details>
		</li>
		<li><details>
			<summary>MODULE 2</summary>
				<p>Note 1</p>
				<p>Note 2</p>
				<p>Note 3</p>
		    </details>
		</li>
		<li><details>
			<summary>MODULE 3</summary>
				<p>Note 1</p>
				<p>Note 2</p>
				<p>Note 3</p>
		    </details>
		</li>
		<li><details>
			<summary>MODULE 4</summary>
				<p>Note 1</p>
				<p>Note 2</p>
				<p>Note 3</p>
		    </details>
		</li>
		<li><details>
			<summary>MODULE 5</summary>
				<p>Note 1</p>
				<p>Note 2</p>
				<p>Note 3</p>
		    </details>
		</li>
		<li><details>
			<summary>MODULE 6</summary>
				<p>Note 1</p>
				<p>Note 2</p>
				<p>Note 3</p>
		    </details>
		</li>
        </ul>
    </div>
  </div>
    <div class="main"><!-- width="1000"-->
    <h2>TITLE HEADING</h2>
    <h5>Title description, Dec 7, 2017</h5>
    <div class="fakeim">
    	<video width="1000" height="500" controls>
     	<source src="/home/karupa/Videos/english/Sample Videos 2.mp4" type="video/mp4">
        <source src="movie.ogg" type="video/ogg">
	<track src="jocker.srt" kind="subtitles" srclang="en" label="English">
	
     </video>
        <button> <!--color="blue"-->
     	<a href="/home/karupa/Videos/english/Sample Videos 2.mp4" download>Download
     	</a>
     </button>
       
    </div>
    <p>Some text..</p>
    <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    <br>
    <h2>TITLE HEADING</h2>
    <h5>Title description, Sep 2, 2017</h5>
    <div> 
      <details>
        <summary>Notes</summary>
        <p>note 1</p>
				<p>note 2</p>
				<p>note 3</p>
				<p>note 1</p>
				<p>note 2</p>
				<p>note 3</p>
				<p>note 1</p>
				<p>note 2</p>
				<p>note 3</p>
				<p>note 1</p>
				<p>note 2</p>
				<p>note 3</p>
				 <details>
        <!--<summary>notes</summary>-->
    </div>
    <p>Some text..</p>
    <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
  </div>
  <div class="side">
      <h2>
  <%
            String a=session.getAttribute("username").toString();
            out.println("Hello  "+a+"...");
            %></h2>
  	<!--<div class="fakeimg" style="height:200px;"></div>-->
  	<div>
  		<!-- <textarea  name="comments" maxlength="1000"   cols="40" rows="40"></textarea>-->
  	</div>
        <div>
            <h2> Chatbot area</h2>
        </div>
  </div>
</div>

<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>