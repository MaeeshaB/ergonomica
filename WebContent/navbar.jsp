<%
	String username = (String) session.getAttribute("username");
	String loggedIn = "display:none";
	String notLoggedIn = "display:visible";
	if (username == "null") {
		loggedIn = "display:visible";
		notLoggedIn = "display:none";
	}
%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="suggestedProducts.jsp">App Name</a>
		</div>
	
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="about.jsp">About</a></li>
				
				<li> <a  href="PostController?action=getPosts">Workspace Inspiration</a> </li>
					
				<li><a href="search.jsp">Search</a></li>
				
				<li><a href="myworkspace.jsp" >My Workspace</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
			<!-- The following code can be added to include a Login button to the right-hand side of the navbar-->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp" style=<%=notLoggedIn%>><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="LogoutServlet" style=<%=loggedIn%>><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>

		</div>
	</div>
</nav>