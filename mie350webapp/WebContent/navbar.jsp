<%
	String username = (String) session.getAttribute("username");
	String loggedIn = "display:none";
	String notLoggedIn = "display:visible";
	if (username == "null") {
		loggedIn = "display:visible";
		notLoggedIn = "display:none";
	}
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="suggestedProducts.jsp">Ergonomica</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

<!-- https://bootswatch.com/yeti/ -->
  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
       <li class="nav-item">
        <a class="nav-link" href="about.jsp">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="PostController?action=getPosts">Workspace Inspiration</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="search.jsp">Search</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="MyWorkspaceController?location=ws&action=getItems&userid=admin01">My Workspace</a>
      </li>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
		<li><a href="login.jsp" style=<%=notLoggedIn%>><span
				class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li><a href="LogoutServlet" style=<%=loggedIn%>><span
				class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	</ul>
  </div>
</nav>
