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
  <a class="navbar-brand" href="suggestedProducts.jsp">
  <svg width="1.3em" height="1.3em" viewBox="0 0 16 16" class="bi bi-mouse3" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	  <path fill-rule="evenodd" d="M5.473.463C5.896.157 6.407 0 7 0c1.26 0 2.981.123 4.403.825.72.355 1.375.864 1.85 1.59.475.728.747 1.642.747 2.772v5.625C14 13.659 11.78 16 9 16H7c-2.78 0-5-2.342-5-5.188V8.236A2.5 2.5 0 0 1 3.382 6L4 5.691v-.503c0-1.31.124-2.569.543-3.517.213-.482.512-.906.93-1.208zM4.017 6.801l-.188.093A1.5 1.5 0 0 0 3 8.236v2.576C3 13.146 4.81 15 7 15h2c2.19 0 4-1.855 4-4.188V5.189c0-.964-.23-1.683-.585-2.226-.356-.546-.86-.947-1.454-1.24C9.754 1.127 8.226 1 7 1c-.407 0-.708.105-.941.274-.239.172-.44.435-.602.801C5.127 2.823 5 3.907 5 5.187v.844a16.734 16.734 0 0 0 .008.448c.007.3.023.715.053 1.175.063.937.186 2.005.413 2.688a.5.5 0 1 1-.948.316c-.273-.817-.4-2-.462-2.937a27.75 27.75 0 0 1-.047-.92z"/>
	  <path fill-rule="evenodd" d="M9 .5a.5.5 0 0 1 .5.5v5.099l4.108.913a.5.5 0 0 1-.216.976l-9-2a.5.5 0 1 1 .216-.976l3.892.865V1A.5.5 0 0 1 9 .5z"/>
	</svg>Ergonomica</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
       <li class="nav-item">
        <a class="nav-link" href="about.jsp">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-info-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
		  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
		  <path d="M8.93 6.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588z"/>
		  <circle cx="8" cy="4.5" r="1"/>
		</svg>
        About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="PostController?action=getPosts">
        <svg width="1.5em" height="1.5em" viewBox="0 0 24 24" class="bi" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		<path d="M15 22H9V20H15V22ZM15 19H9L8.777 17C8.65703 16.3385 8.45863 15.6936 8.186 15.079C7.832 14.579 7.463 14.152 7.106 13.735C5.79411 12.5053 5.03465 10.7978 5 9C5 5.13401 8.13401 2 12 2C15.866 2 19 5.13401 19 9C18.9593 10.7868 18.2057 12.4831 16.907 13.711L16.89 13.731C16.534 14.148 16.166 14.58 15.819 15.075C15.5466 15.6912 15.3476 16.3373 15.226 17L15 19ZM12 4C9.23995 4.00331 7.00331 6.23995 7 9C7 10.544 7.644 11.293 8.618 12.428C8.988 12.86 9.408 13.348 9.818 13.919C10.3156 14.8858 10.6555 15.9259 10.825 17H13.176C13.3499 15.929 13.6892 14.8916 14.182 13.925C14.582 13.354 15.001 12.863 15.37 12.431L15.385 12.413C16.357 11.273 17 10.52 17 9C16.9967 6.23995 14.7601 4.00331 12 4Z"/>
		</svg> Workspace Inspiration</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="search.jsp">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
		  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
		</svg> Search</a>
      </li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
		
		<li class="nav-item" style="${notLoggedIn}">
        <a class="nav-link" href="MyWorkspaceController?location=ws&action=getItems&userid=${username}">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-briefcase" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M0 12.5A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-6h-1v6a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-6H0v6z"/>
		  <path fill-rule="evenodd" d="M0 4.5A1.5 1.5 0 0 1 1.5 3h13A1.5 1.5 0 0 1 16 4.5v2.384l-7.614 2.03a1.5 1.5 0 0 1-.772 0L0 6.884V4.5zM1.5 4a.5.5 0 0 0-.5.5v1.616l6.871 1.832a.5.5 0 0 0 .258 0L15 6.116V4.5a.5.5 0 0 0-.5-.5h-13zM5 2.5A1.5 1.5 0 0 1 6.5 1h3A1.5 1.5 0 0 1 11 2.5V3h-1v-.5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5V3H5v-.5z"/>
		</svg> My Workspace</a>
      </li>
      
      <li class="nav-item" style="${notLoggedIn}">
        <a class="nav-link" href="accountSettings.jsp">
        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gear" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z"/>
		  <path fill-rule="evenodd" d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z"/>
		</svg> Account Details</a>
      </li>
      
      <li class="nav-item" style="${loggedIn}">
		<a class="nav-link" href="login.jsp"> 
		<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-in-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
		  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
		</svg>
		Login</a></li>
		
	
		<li class="nav-item" style="${notLoggedIn}">
		<a class="nav-link" href="LogoutServlet"> 
		<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-in-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M10 3.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 1 1 0v2A1.5 1.5 0 0 1 9.5 14h-8A1.5 1.5 0 0 1 0 12.5v-9A1.5 1.5 0 0 1 1.5 2h8A1.5 1.5 0 0 1 11 3.5v2a.5.5 0 0 1-1 0v-2z"/>
		  <path fill-rule="evenodd" d="M4.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H14.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
		</svg>
		Logout</a>
	</ul>
  </div>
</nav>
