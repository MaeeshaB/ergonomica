<%
	String username = (String) session.getAttribute("username");
	String loggedIn = "display:none";
	String notLoggedIn = "display:visible";
	if (username == null) {
		loggedIn = "display:visible";
		notLoggedIn = "display:none";
	}
	session.setAttribute("loggedIn", loggedIn);
	session.setAttribute("notLoggedIn", notLoggedIn);
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
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
		
		<li class="nav-item" style="${notLoggedIn}">
        <a class="nav-link" href="MyWorkspaceController?location=ws&action=getItems&userid=${username}">My Workspace</a>
      </li>
      
      <li class="nav-item" style="${notLoggedIn}">
        <a class="nav-link" href="accountSettings.jsp">Account Details</a>
      </li>
      
      <li class="nav-item" style="${loggedIn}">
		<a class="nav-link" href="login.jsp"> Login</a></li>
		
	
		<li class="nav-item" style="${notLoggedIn}">
		<a class="nav-link" href="LogoutServlet"> Logout</a>
	</ul>
  </div>
</nav>
