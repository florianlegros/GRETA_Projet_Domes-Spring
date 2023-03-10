<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DOMES - Login</title>
  <link rel="stylesheet" href="css/style.css" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<title>DOMES Services</title>
    	<!-- CSS only -->
    	<link
    		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    		rel="stylesheet"
    		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    		crossorigin="anonymous" />
    	<link rel="stylesheet"
    		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" />
    	<!--JavaScriptBundlewithPopper-->
    	<script
    			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    			crossorigin="anonymous"></script>
</head>
<body>
	<header
    		style="padding: 1% 1% 1% 1%; background-color: rgba(13, 179, 222, .2)">
    		<a href="/home"><img alt=""
    			src="https://cdn.discordapp.com/attachments/1039093292543000609/1039829661775044668/logo-png.png"
    			style="width: 5%; height: 5%" /></a>
    		<div class="d-flex flex-row justify-content-end p-1"
    			style="float: right; padding: 1% 1% 1% 1%;">
    			<form style="padding-top: 9%;">
                			<input type="submit" value="Deconnexion" action="/home" name="deconnect" />
                		</form>
    			<a href="/compte"><i class="bi bi-person-circle"
    				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"></i></a><a
    				href="/panier" style="text-decoration: none;"><i
    				class="bi bi-cart4"
    				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"><c:if
    						test="${cart.size()>0}">
    						<div
    							style="color: white; background-image: url('/images/paw.svg'); font-size: x-small; border-radius: 50%; text-align: center; display: inline-block; padding: 9px 11px 2px 10px; right: 6.9%; font-weight: bold; position: absolute;">${cart.size()}</div>
    					</c:if></i></a><a href="#"><i class="bi bi-question-circle-fill"
    				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"></i></a>
    		</div>
    	</header>
    	<section class="h-100 h-custom" style="background-color: #eee;">
        	<form>
        		<div class="container py-5 h-100">
        			<div
        				class="row d-flex justify-content-center align-items-center h-100">
        				<div class="col">
        					<div class="card">
        						<div class="card-body p-4">

        							<div
        								class="d-flex justify-content-between align-items-center mb-4">
        								<div>
        									<p class="mb-1">Commande recente</p>
        								</div>
        							</div>

        							<div class="card mb-3">
        								<div class="card-body">
        									<div class="d-flex justify-content-between">
        										<div class="d-flex flex-row align-items-center">
        											<div class="ms-3">
        												<h5>${history[0].adresse}</h5>
        												<p class="small mb-0">${history[0].date}</p>
        												<p class="small mb-0">${history[0].status}</p>
        											</div>

        										</div>
        										<div class="d-flex " style="float: right; text-align: right;">
        											<div>
        												<h5>${history[0].article.nom}</h5>

        												${commande.article.prix}

        											</div>

        											<img src="${history[0].article.image}"
        												class="card-img-top"
        												style="height: 50px; margin-left: 10px;" />
        										</div>
        									</div>
        								</div>
        							</div>
        							<a data-bs-toggle="collapse" href="#collapseExample"
        								aria-expanded="false" aria-controls="collapseExample"> show
        								all </a>
        							<div class="row collapse" id="collapseExample">

        								<div class="col-lg-7">

        									<div
        										class="d-flex justify-content-between align-items-center mb-4">
        										<div>
        											<p class="mb-1">Orders history</p>
        											<p class="mb-0">You made
        												${history.size()} orders</p>
        										</div>
        									</div>

        									<c:forEach items="${history}"
        										var="commande">

        										<div class="card mb-3">
        											<div class="card-body">
        												<div class="d-flex justify-content-between">
        													<div class="d-flex flex-row align-items-center">
        														<div class="ms-3">
        															<h5>${commande.adresse}</h5>
        															<p class="small mb-0">${commande.date}</p>
        															<p class="small mb-0">${commande.status}</p>
        														</div>

        													</div>
        													<div class="d-flex "
        														style="float: right; text-align: right;">
        														<div>
        															<h5>${commande.article.nom}</h5>

        																${commande.article.prix}


        														</div>

        														<img src="${commande.article.image}" class="card-img-top"
        															style="height: 50px; margin-left: 10px;" />
        													</div>
        												</div>
        											</div>
        										</div>

        									</c:forEach>
        								</div>
        							</div>
        						</div>
        					</div>
        				</div>
        			</div>
        		</div>
        	</form> <form>
        		<div class="container py-5 h-100">
        			<div
        				class="row d-flex justify-content-center align-items-center h-100">
        				<div class="col">
        					<div class="card">
        						<div class="card-body p-4">

        							<div class="row">

        								<div class="col-lg-7">

        									<div
        										class="d-flex justify-content-between align-items-center mb-4">
        										<div>
        											<p class="mb-1">Liste Adresses</p>
        										</div>
        									</div>

        									<c:forEach items="${adresses}" var="adresse">

        										<div class="card mb-3">
        											<div class="card-body">
        												<div class="d-flex justify-content-between">
        													<div class="d-flex flex-row align-items-center">
        														<div class="ms-3">
        															<h5>${adresse.adresse}</h5>
        														</div>

        													</div>
        												</div>
        											</div>
        										</div>

        									</c:forEach>
        								</div>
        								<div class="col-lg-5 text-center">
        									<p class="mb-1">Ajouter Adresse</p>
        									<input id="adresse" name="adresse"
        										class="form-control form-control-mb" />
        									<br />
        									<input type="submit"/>
        								</div>

        							</div>
        						</div>
        					</div>
        				</div>
        			</div>
        		</div>

        	</form> </section>
</body>
</html>