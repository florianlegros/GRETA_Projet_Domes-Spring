<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<br />
	<br />

	<div
		class="h-100 d-flex align-items-center justify-content-center text-center">
		<div id="carouselExampleControls" class="carousel carousel-dark slide"
			style="width: 50%;" data-bs-ride="carousel">
			<div class="carousel-inner"
				style="height: 15vw; border-radius: 20px;">
				<div class="carousel-item active" style="height: 100%;">
					<img
						src="https://wallpapers.com/images/featured/baby-animals-wmsvikfmzvhh3aot.jpg"
						class="img-fluid  w-100" style="height: 100%" alt="..." />
				</div>
				<div class="carousel-item" style="height: 100%">
					<img
						src="https://c4.wallpaperflare.com/wallpaper/936/1007/629/cats-cute-wallpaper-preview.jpg"
						class="img-fluid  w-100" style="height: 100%" alt="..." />
				</div>
				<div class="carousel-item" style="height: 100%">
					<img src="https://wallpapercave.com/wp/wp3436777.jpg"
						class="img-fluid  w-100" style="height: 100%" alt="..." />
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>




		<div class="row row-cols-1 row-cols-md-6 g-6"
			style="padding: 5% 5% 5% 5%;max-width:100%;">

			<c:forEach items="${catalogue}"
				var="article">

				<div class="col">
					<div class="card h-100">
						<img src="${article.image}" class="card-img-top h-50" />
						<div class="card-body">
							<h5 class="card-title">${article.nom}</h5>
							<small class="card-title text-muted">${article.race}</small>
							<p class="card-text">${article.description}</p>

						</div>

						<div class="card-footer">
							<form><c:if
								test="${!empty login.username and !empty login.password}">

                                <input type="image" name="ProcessFavAction" style="float:left;" src="${ article.favoris.contains(login) ? '/images/star-fill.svg' : '/images/star.svg' }"/>
							</c:if>


                                <input type="image" value="ProcessAddAction" name="ProcessAddAction"
                                src="/images/cart-plus-fill.svg" style="float:right;" />
                                <input type="hidden" name="idArticle" value="${article.id}" /></form>
						</div>

					</div>
				</div>
			</c:forEach>
		</div>




</body>
</html>
