<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="includeHtml.js"></script>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- <link rel="stylesheet" type="text/css" href="userPAGES.css">  -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <title>Page Utilisateur</title>
</head>

<body>

<br>
<br>
<br>
<br>
<br>
<br>

  
 


	<div class="container-fluid">
	
<div class="p-3 mb-2 bg-info text-white">
		<div class="row">
			<div class="col-sm-6" >
				<h2>${sessionScope.userName}</h2>
				<div class="panel panel-warning">
					<div class="panel-heading">
					
					
					
					
					
					 
					${name}<br>
					 
					
					
					</div>
					${profilepic}
					<div class="panel-body"><img src="${profilepic}" alt="..." class="img-thumbnail"></div>
				</div>
			</div>
			<div class="col-sm-6" >
				<h2>${sessionScope.userName}</h2>
				<div class="panel panel-warning">
					<div class="panel-heading">${name}</div>
					<div class="panel-body">
					${name}<br><br><br><br><br>
					${birthdate}<br><br><br><br><br>
					${email}<br><br><br><br><br>


<c:set var="count" value="0" scope="page" />
							<c:forEach items="${listOfBorrows}" var="borrows">
								<c:choose>
									<c:when test='${borrows.status.equals("ENCOURS")}'>
						<c:set var="count" value="${count + 1}" scope="page"/>
					
							
									</c:when>
									<c:when test='${borrows.status.equals("EXTENDED")}'>
						<c:set var="count" value="${count + 1}" scope="page"/>
					
							
									</c:when>
								</c:choose>

							</c:forEach>



							<a href="${pageContext.request.contextPath}/borrowlist">Prêts en cours <span class="badge">${count}</span></a><br>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3" >
				<div class="panel panel-warning">
					<div class="panel-heading">historique des connections</div>
					<div class="panel-body">date1 <br>date2<br>date3<br></div>
				</div>
			</div>
			<div class="col-sm-3" >
				<div class="panel panel-warning">
					<div class="panel-heading">Historique des prêts récents</div>
					 
						<c:forEach items="${listofsomebooks}" var="borrows">
							
											<strong>${borrows}</strong><br><br>
				

						</c:forEach>
					</div>
			</div>
			<div class="col-sm-3" >
				<div class="panel panel-warning">
					<div class="panel-heading">Dernier livre emprunté</div>
					<div class="panel-body">${firstBookTitleBorrow} <span class="label label-default">${firstBookAuthorBorrow}</span></div>
				</div>
			</div>
		</div>
	</div>
</div>





 
<%@ include file="Menu.jsp" %>
</body>
<script>includeHTML();</script>
</html>
