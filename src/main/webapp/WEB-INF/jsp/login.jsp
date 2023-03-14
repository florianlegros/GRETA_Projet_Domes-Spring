<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    	<form:form action="/loginUser" modelAttribute="login">
    		<section>
    			<div class="container py-5 h-100">
    				<div
    					class="row d-flex justify-content-center align-items-center h-100">
    					<div class="col-12 col-md-8 col-lg-6 col-xl-5">
    						<div class="card shadow-2-strong" style="border-radius: 1rem;">
    							<div class="card-body p-5 text-center">

    								<h3 class="mb-5">Sign in</h3>

    								<div class="form-outline mb-4">
    									<label>Username</label> <form:input path="username" type="text" />
                                        <form:errors path="username" cssClass="error"/><br/>

    								</div>

    								<div class="form-outline mb-4">
    									<label>Password</label> <form:input path="password" type="password" />
                                        <form:errors path="password" cssClass="error"/><br/>

    								</div>
    								<div class="row mb-4">
    									<div class="col d-flex justify-content-center">
    										<!-- Checkbox -->
    										<div class="form-check">
    											<input class="form-check-input" type="checkbox" value=""
    												id="form2Example31" /> <label class="form-check-label"
    												for="form2Example31"> Remember me </label>
    										</div>
    									</div>

    									<div class="col">
    										<!-- Simple link -->
    										<a href="#">Forgot password?</a>
    									</div>
    								</div>

    								<input type="submit" value="Submit" id="submit">

    							</div>
    							<div class="text-center">
    								<p>
    									Don't have an account? <a href="/register"
    										class="link-info">Register here</a>
    								</p>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    		</section>
    	</form:form>
</body>
</html>