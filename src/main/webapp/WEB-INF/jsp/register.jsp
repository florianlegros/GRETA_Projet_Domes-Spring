<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/style.css"/>

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
				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"><c:if
						test="${cart.size()>0}">
						<div
							style="color: white; background-image: url('/images/paw.svg'); font-size: x-small; border-radius: 50%; text-align: center; display: inline-block; padding: 9px 11px 2px 10px; right: 6.9%; font-weight: bold; position: absolute;">${cart.size()}</div>
					</c:if></i></a><a href="#"><i class="bi bi-question-circle-fill"
				style="color: #FF8B00; font-size: 3vw; margin-left: 2vw"></i></a>
		</div>
	</header>
	<!-- #home -->

	<section id="registration" class="section">
	 <div class="container tagline">
	 <em>Register User</em><br/>
    		 <form:form method="post" action="/registerUser" modelAttribute="newuser">
    			<label>Username</label> <form:input path="username" type="text" />
    			<form:errors path="username" cssClass="error"/><br/>
    			<label>Password</label> <form:input path="password" type="password" />
    			<form:errors path="password" cssClass="error"/><br/>
    			<label>Email</label> <form:input path="email" type="text" />
    			<form:errors path="email" cssClass="error"/><br/>
    			<br/>
    			<input type="submit" value="Submit" id="submit">
    		</form:form>
		</div>
	</section>
	<footer class="footer">
		<div class="container">
			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding">
					</div>
				</div>
			</nav>
		</div>
		<!-- container -->
	</footer>
	<!-- footer -->
</body>
</html>