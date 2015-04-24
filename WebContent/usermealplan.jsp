<%@page import="BusinessLogic.*"%>
<%@page import="interfc.*"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="javax.script.*"%>
<%@page import="java.io.IOException"%>
<%@include file="header.jsp" %>

<html>
<head>
<title>Meal Planner</title>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="css/mp.css">
<link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="css/search.css">
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

</head>
<body>

<div class="container-fluid">

    <div class="col-sm-8">
<%if(session.getAttribute("username") == null){
	response.sendRedirect("login.jsp");
}
	 %>
<%  
    
    XMLParser writeX = new XMLParser();
    ArrayList<MealPlanner> readmeals = new ArrayList<MealPlanner>();
    
    if(writeX.readMealPlans(getServletContext().getRealPath("") + "/mealplans.xml") != null){
    readmeals = writeX.readMealPlans(getServletContext().getRealPath("") + "/mealplans.xml");
    
    for(MealPlanner p: readmeals){
	       if ((Integer)session.getAttribute("ID") != p.getUserId()){
	    	   %>
	<div id="MP">       
    <p>
     <button class="btn btn-block btn-success btn-lg" style="width: 170px" onclick="document.location.href='MealPlan.jsp'">Create a Meal Plan</button>
    </p>
    	
    <% }else{%>
    

    
	<table >
	<tr><th>Monday</th>
	<th>Tuesday</th>
	<th>Wednesday</th>
	<th>Thursday</th>
	<th>Friday</th>
	<th>Saturday</th>
	<th>Sunday</th></tr>
        <%for (int i = 0; i < 3; i++) {%>
		<tr >
			<%for (int j = 0; j < 7; j++) {%>
           <td align="center" width="100px">
           <%for(MealPlanner m: readmeals){
    	       if ((Integer)session.getAttribute("ID") == m.getUserId()){
    	    	   if (m.getMeal(j, i)!=null){%>
    	    	   
    	    	   <form action="viewRecipe.jsp" method="post">
    	    	<button style="width:100%;" class="btn pull-right btn-primary btn-md"  type="submit" ><%=m.getMeal(j,i).getName()%> </button>
    	    	<input name="name" type="hidden" value="<%=m.getMeal(j,i).getName() %>">
    	    	</form>
    	       
    	   <% } } }%>
          </td>
		<%}%>
		</tr> 
		<%}%>
	</table>
	<br>
	
    <button class="btn btn-block btn-success btn-lg" style="width: 150px" onclick="document.location.href='MealPlan.jsp'">Edit Meal Plan</button>
    </div>
    <%} } }
    else{ %>
    
<p>
<button class="btn btn-block btn-success btn-lg" style="width: 150px" onclick="document.location.href='MealPlan.jsp'">Create a Meal Plan</button>
</p>
	
<% 
    }%>
    <div >
    </div>
    </div>
    </div>
</body>
</html>