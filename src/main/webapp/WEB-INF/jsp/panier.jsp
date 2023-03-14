<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>DOMES</title>
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
			<a href="/compte"><i class="bi bi-person-circle"
				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"></i></a><a
				href="/panier" style="text-decoration: none;"><i
				class="bi bi-cart4"
				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw">
						<div
							style="color: white; background-image: url('/images/paw.svg'); font-size: x-small; border-radius: 50%; text-align: center; display: inline-block; padding: 9px 11px 2px 10px; right: 6.9%; font-weight: bold; position: absolute;">${cart.size()}</div>
					</i></a><a href="#"><i class="bi bi-question-circle-fill"
				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"></i></a>
		</div>
	</header>
<form:form method="post" action="/panier" modelAttribute="commande">
	<section class="h-100 h-custom" style="background-color: #eee;">

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
    												<p class="mb-1">Shopping cart</p>
    												<p class="mb-0">You have
    													${cart.size()} items in your cart</p>
    											</div>
    										</div>
    
    										<c:forEach items="${cart}" var="article">
    
    											<div class="card mb-3">
    												<div class="card-body">
    													<div class="d-flex justify-content-between">
    														<div class="d-flex flex-row align-items-center">
    															<div>
    																<img src="${article.image}" class="img-fluid rounded-3"
    																	alt="Shopping item" style="width: 65px;" />
    															</div>
    															<div class="ms-3">
    																<h5>${article.nom}</h5>
    																<p class="small mb-0">${article.description}</p>
    															</div>
    														</div>
    														<div class="d-flex flex-row align-items-center">
    															<div style="width: 80px;">
    																<h5 class="mb-0"> <fmt:formatNumber value="${article.prix}" type="currency" currencySymbol="&euro;"/></h5>
    															</div>
    															<form>
                                                                    <input type="hidden" name="idArticle" value="${article.id}">
                                                                    <input type="image" src="/images/cart-x-fill.svg" name="ProcessDelAction">
    															</form>

    														</div>
    													</div>
    												</div>
    											</div>
    										</c:forEach>
    

    											<div class="container py-5 w-50"
    												style="position: absolute; bottom: 0;">
    												<div
    													class="row d-flex justify-content-center align-items-center h-100">
    													<div class="col">
    														<div class="card">
    															<div class="card-body p-4">
    
    																<div class="row">

    																	<div
    																		class="d-flex justify-content-between align-items-center mb-4">
    																		<div>
    																			<p class="mb-1">Liste Adresses</p>
    																		</div>
    																	</div>

                                                                        <form:radiobuttons path="" name="adresse" items="${adresses}" itemLabel="adresse" itemValue="id"/>

    																</div>

    															</div>
    														</div>
    													</div>
    												</div>
    											</div>

    									</div>
    
    									<div class="col-lg-5">
    
    										<div class="card rounded-3"
    											style="background-color: rgba(13, 179, 222, .2)">
    											<div class="card-body">
    												<div
    													class="d-flex justify-content-between align-items-center mb-4">
    													<h5 class="mb-0">Card details</h5>
    													<img
    														src="https://cdn.discordapp.com/attachments/1039093292543000609/1039829661775044668/logo-png.png"
    														class="img-fluid rounded-3" style="width: 45px;"
    														alt="Avatar" />
    												</div>
    
    
    
    												<div class="form-outline form-white mb-4">
    													<input type="text" id="typeName"
    														class="form-control form-control-lg" size="17"
    														placeholder="Cardholder's Name" /> <label
    														class="form-label" for="typeName">Cardholder's
    														Name</label>
    												</div>
    
    												<div class="form-outline form-white mb-4">
    													<input type="text" id="typeText"
    														class="form-control form-control-lg" size="17"
    														placeholder="1234 5678 9012 3457" minlength="19"
    														maxlength="19" /> <label class="form-label"
    														for="typeText">Card Number</label>
    												</div>
    
    												<div class="row mb-4">
    													<div class="col-md-6">
    														<div class="form-outline form-white">
    															<input type="text" id="typeExp"
    																class="form-control form-control-lg"
    																placeholder="MM/YYYY" size="7" minlength="7"
    																maxlength="7" /> <label class="form-label"
    																for="typeExp">Expiration</label>
    														</div>
    													</div>
    													<div class="col-md-6">
    														<div class="form-outline form-white">
    															<input type="password" id="typeText2"
    																class="form-control form-control-lg"
    																placeholder="&#9679;&#9679;&#9679;" size="1"
    																minlength="3" maxlength="3" /> <label
    																class="form-label" for="typeText">Cvv</label>
    														</div>
    													</div>
    												</div>
    
    

    												<hr class="my-4"></hr>
    												<c:set var="soustotal" value="${0}" />
    												<c:forEach var="article"
    													items="${cart}">
    													<c:set var="soustotal" value="${soustotal + article.prix}" />
    												</c:forEach>
    												<div class="d-flex justify-content-between">
    													<p class="mb-2">Subtotal: </p>

                                                        <fmt:formatNumber value="${soustotal}" type="currency" currencySymbol="&euro;"/>

    												</div>
    
    												<div class="d-flex justify-content-between">
    													<p class="mb-2">Shipping: </p>
                                                        <fmt:formatNumber value="${20}" type="currency" currencySymbol="&euro;"/>

    												</div>
    
    												<div class="d-flex justify-content-between">
    													<p class="mb-2">TVA</p>
    													<p class="mb-2">20%</p>
    												</div>
    												<c:set var="total"
    													value="${soustotal+20+((soustotal+20)*0.2)}" />
    
    												<div class="d-flex justify-content-between mb-4">
    													<p class="mb-2">Total(Incl. taxes): </p>
                                                        <fmt:formatNumber value="${total}" type="currency" currencySymbol="&euro;"/>
    												</div>

                                                    <input type="submit" type="submit" value="Submit" id="submit" class="btn btn-info btn-block btn-lg" >

    											</div>
    										</div>
    									</div>

    								</div>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>

    </section>
  </form:form>


</body>
</html>
