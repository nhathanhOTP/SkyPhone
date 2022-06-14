<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="/images/logoJava5-removeBg.png"
	type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Quicksand:400,600,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="/fonts/icomoon/style.css">

<link rel="stylesheet" href="/css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="/css/style.css">
<!--Style phone-->
<link rel="stylesheet" href="/css/phone.css">
<link rel="stylesheet" href="/css/footer.css">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<title>SkyPhone</title>
</head>

<body ng-app="">
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	<!-- .site-mobile-menu -->

	<div class="site-navbar-wrap">
		<!-- OnNav -->
		<jsp:include page="/views/layOut/onNavUser.jsp" />
		<!-- Nav -->
		<jsp:include page="/views/layOut/navUser.jsp" />
		<!-- SideBar for user -->
		<jsp:include page="/views/layOut/sidebarUser.jsp" />
		<div class="img-fluid hero"
			style="background-image: url(https://cdn.tgdd.vn/2022/05/banner/TGDDDesk1920x450-15-op-1920x450-1.png ); margin-top: 80px;">
			<div class="container banner">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner ">
						<div class="carousel-item active">
							<div class="row">
								<div class="col-lg-6">
									<img class="d-block  m-auto w-100"
										src="https://cdn.tgdd.vn/2022/05/banner/720-220-720x220-143.png"
										alt="">
								</div>
								<div class="col-lg-6">
									<img class="d-block m-auto w-100"
										src="https://cdn.tgdd.vn/2022/05/banner/720-220-720x220-37.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-lg-6">
									<img class="d-block  m-auto w-100"
										src="https://cdn.tgdd.vn/2022/05/banner/720x220-720x220-5.png"
										alt="">
								</div>
								<div class="col-lg-6">
									<img class="d-block m-auto w-100"
										src="https://cdn.tgdd.vn/2022/05/banner/720-220-720x220-217.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-lg-6">
									<img class="d-block  m-auto w-100"
										src="https://cdn.tgdd.vn/2022/05/banner/sea-aseri-720-220-720x220-8.png"
										alt="">
								</div>
								<div class="col-lg-6">
									<img class="d-block m-auto w-100"
										src="https://cdn.tgdd.vn/2022/05/banner/ipxanh-720-220-720x220.png"
										alt="">
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon text-dark"
						style="font-size: 10px;" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>

		<div class="super_container bannerChu">
			<div class="container-fluid">
				<div class="row">
					<a href="" class="m-auto"><img src="/images/banner.png "
						alt=" " class="img-fluid rounded "></a>
				</div>
				<br>
				<div class="container col-xl-10 bg-light pt-4">
					<div class="row ">
						<div class="col-sm-7 ">
							<h2 class="title-brand ">Điện thoại nổi bật nhất</h2>
						</div>
						<div class="col-sm-5 ">
							<a href="# " class="text-dark font-weight-normal "><span
								class="badge badge-pill badge-primary ">SamSung Galaxy
									S22 Series</span></a> <a href="# " class="text-dark font-weight-normal "><span
								class="badge badge-pill badge-warning ">IPhone 13 Series</span></a>
							<a href="# " class="text-dark font-weight-normal "><span
								class="badge badge-pill badge-danger ">OPPO Renos6 Z</span></a>
						</div>
					</div>
					<div class="row ml-5 pl-5 ">
						<c:forEach var="item" items="${items}">
							<div class="card rounded-0 " style="width: 14rem;">
								<a href="/item/product/${item.id_dt}" class="text-dark ">
									<div class="arrow">
										<img ng-if="${item.gia}<11.990000"
											src="/images/Label_01-02.png" width="40 " height="40 "
											class="mulet " alt=" ">
										<img
											ng-if="${item.gia}>11.990000" src="/images/docquyen.png"
											width="40 " height="40 " class="mulet " alt=" ">
										<img
											width="220px" class="m-auto pt-4 mx-auto d-block "
											src="/images/phone_images/${item.id_dt}/0.jpg" alt="Card image cap ">
									</div>
									<div class="card-body titlePro">
										<p ng-if="${item.tra_gop}>10" class="result-label temp4 ">
											<img src="/images/icon6-50x50.png " width="20px "
												height="20px " class="migs " alt="VNPAY Giảm 500K "> <span
												class=" "> VNPAY Giảm 500K </span>
										</p>
										<h5 class="card-title font-weight-normal ">${item.ten_dt}</h5>
										<h6 class="font-weight-bold text-danger ">
											<fmt:formatNumber type="number" value="${item.gia}"/><sup><u>đ</u></sup>
										</h6>
										<i class="bi bi-star-fill text-warning "></i> <i
											class="bi bi-star-fill text-warning "></i> <i
											class="bi bi-star-fill text-warning "></i> <i
											class="bi bi-star-fill text-warning "></i> <i
											class="bi bi-star text-warning "></i>${item.tra_gop}
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
					<div class="mt-4 watch ">
						<button class="btn btn-light rounded border continue ">
							Xem thêm 3470 sản phẩm <i class="bi bi-arrow-right-short "></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<jsp:include page="/views/layOut/footer.jsp" />
	</div>

	<script src="/js/jquery-3.3.1.min.js "></script>
	<script src="/js/popper.min.js "></script>
	<script src="/js/bootstrap.min.js "></script>
	<script src="/js/jquery.sticky.js "></script>
	<script src="/js/main.js "></script>
</body>

</html>
