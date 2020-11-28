<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - About</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">

<style>
	html {
	  box-sizing: border-box;
	}
	
	*, *:before, *:after {
	  box-sizing: inherit;
	}
	/* Three columns side by side */
	.column {
	  float: left;
	  width: 33.3%;
	  margin-bottom: 16px;
	  padding: 0 8px;
	}
	
	/* Display the columns below each other instead of side by side on small screens */
	@media screen and (max-width: 650px) {
	  .column {
	    width: 100%;
	    display: block;
	  }
	}
	
	/* Add some shadows to create a card effect */
	.card {
	  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	  
	}
	
	/* Some left and right padding inside the container */
	.container {
	  padding: 0 16px;
	}
	
	/* Clear floats */
	.container::after, .row::after {
	  content: "";
	  clear: both;
	  display: table;
	}
	
	.title {
	  color: grey;
	}
	
	/*.button {
	  border: none;
	  outline: 0;
	  display: inline-block;
	  padding: 8px;
	  color: white;
	  background-color: #000;
	  text-align: center;
	  cursor: pointer;
	  width: 100%;
	}
	
	.button:hover {
	  background-color: #555;
	}*/
</style> 

</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<!-- Put main information here -->
				<!-- Put main information here -->
				<br></br> 
				<h1>What is Ergonomica?</h1>
				<h4>Statement of the purpose of the application:</h4>
				Ergonomica is a web app designed with the purpose of
				helping users become their most productive and healthy selves while working 
				from home by finding the best ergonomics and performance tools based on 
				their unique needs. <br><br>
				Ergonomica was born out of a need to provide support in the age of widespread work from 
				home trends existing prior to 2020 and accelerated due to COVID-19.
				
				<h2>What can you do on Ergonomica?</h2>
				<h4>Summary of functionalities:</h4>
				<!-- can't link to the other functionalities just yet -->
				In order to achieve our purpose of helping users become their most productive and healthy 
				selves while working from home, the web application utilizes a  
				<a href = "quiz.jsp">quiz</a>, where users can describe themselves and specify
				their <i>#wfhGoals</i> so that our algorithm can return customized product suggestions to 
				help them achieve their <i>#wfhGoals</i>. <br><br>
				
				Our robust database of office and productivity tools have been categorized to 
				fit any of multiple personas, and are discoverable once the user completes
				the quiz or can be accessed from the <a href = "search.jsp">search page</a>.
				<!-- TODO: make sure this points to the search page! --> 
				Once they see the results, users can choose to select a product to lead to a 
				more detailed product page, and add the product to their favourites list,
				which they can view in the <a href = "myworkspace.jsp">"My Workspace" page</a>, where they 
				<!-- TODO: make sure this points to the my workspace page--> 
				can add and delete products from their <a href = "myworkspace.jsp">favourites list</a> and
				<!-- TODO: make sure this points to the favourites list page-->
				<a href = "myworkspace.jsp">create or update</a> their account 
				<!-- TODO: make sure this points to the edit account page--> 
				with which the favourites page will be associated.

			
				<h1>Who is behind Ergonomica?</h1>
				<h4>A description of the development team and context of the task:</h4>
				We are a team of industrial engineering students at the University of Toronto 
				combining our passion for ergonomics and human factors with information 
				systems to make health and productivity more accessible to all. 
				We also wanted to assist with the long term working impacts of COVID-19, 
				which is why we have developed this concept for our undergraduate MIE350 
				course project.
				<br></br>
				<div class="row">
				
				<div class="column">
				<div class="jumbotron">
  					<h1 class="display-3">Meet the Team!</h1>
  					<div class="container">				        
				    </div>
				</div>
				</div>
	
				   <div class="column">
				    <div class="card">
				      <img src="img/about/Maeesha.jpg" alt="Maeesha" style="width:100%">
				      <div class="container">
				        <h3>Maeesha Biswas</h3>
				        <span class="badge badge-pill badge-primary">Project Manager</span>	
				        <span class="badge badge-pill badge-info">Developer</span>  
				        <span class="badge badge-pill badge-dark">DB Manager</span>
				        <br></br>    
				      </div>
				    </div>
				  </div>

				  
				  <div class="column">
				    <div class="card">
				      <img src="img/about/Sarah.jpg" alt="Sarah" style="width:100%">
				      <div class="container">
				        <h3>Sarah Angelou</h3>
				        <span class="badge badge-pill badge-info">Development Lead</span> 	
				        <br></br> 		        
				      </div>
				    </div>
				  </div>
				  
				</div>
				
				<div class="row">
				
				<div class="column">
				    <div class="card">
				      <img src="img/about/Lincoln.jpg" alt="Lincoln" style="width:100%">
				      <div class="container">
				        <h3>Lincoln Leung</h3>
				        <span class="badge badge-pill badge-info">Developer</span>
				        <span class="badge badge-pill badge-warning">Writing & Research</span>  	
				        <br></br> 			        
				      </div>
				    </div>
				  </div>
				<div class="column">
				    <div class="card">
				      <img src="img/about/Matt.jpg" alt="Matt" style="width:100%">
				      <div class="container">
				        <h3>Matt Lindzon</h3>
				        <span class="badge badge-pill badge-success">Designer</span>
				        <span class="badge badge-pill badge-warning">Writing & Research</span>	
				        <br></br> 	        
				      </div>
				    </div>
				  </div>
				 
				  <div class="column">
				    <div class="card">
				      <img src="img/about/Justine.jpg" alt="Justine" style="width:100%">
				      <div class="container">
				        <h3>Justine Steven</h3>
				        <span class="badge badge-pill badge-success">Designer</span>
				        <span class="badge badge-pill badge-warning">Writing & Research</span>
				        <br></br> 					        
				      </div>
				    </div>
				  </div>
				  
				</div>
				
				<div class="row">
				  
				  <div class="column">
				    <div class="card">
				      <img src="img/about/Audrey.jpg" alt="Audrey" style="width:100%">
				      <div class="container">
				        <h3>Audrey Benmergui</h3>
				        <span class="badge badge-pill badge-success">Designer</span>
				        <span class="badge badge-pill badge-info">Developer</span> 
				        <span class="badge badge-pill badge-warning">Writing & Research</span>		
				        <br></br> 		        
				      </div>
				    </div>
				  </div>
				
				  <div class="column">
				    <div class="card">
				      <img src="img/about/Kellise.jpg" alt="Kellise" style="width:100%">
				      <div class="container">
				        <h3>Kellise Williams</h3>
				        <span class="badge badge-pill badge-success">Designer</span>
				        <span class="badge badge-pill badge-warning">Writing & Research</span>	
				        <br></br> 				        
				      </div>
				    </div>
				  </div>
				  
				</div>
				
				<h3>Disclaimer</h3>
				This website was designed and built by Engineering students at the 
				University of Toronto. We are not associated in any way with the products 
				and companies listed on the website. <br><br>
				
				<h1>Still Need (from project requirements)</h1>
				--> Textual information providing an overview of the topic
				area selected (appropriate use of references, properly cited
				is mandatory in this section) <br>
				--> A reasonable collection of links, effectively organized and
				identified to help site visitors and the sites of key other
				content sites (e.g., businesses, other communities) that are
				directly relevant
				
				<br>
				<br><br><br><br><br>
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
			<%@ include file="footer.jsp"%>
		</div>
	</div>

	

</body>
</html>
