

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <!-- %@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="includeHtml.js"></script>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <title>page d'erreur</title>
</head>

<body>
<%@ include file="Menu.jsp" %>

<br>
<br>
<br>
<br>


   que s'est-il passé
${customMessage}
 
</body>
<script>includeHTML();</script>
</html>
