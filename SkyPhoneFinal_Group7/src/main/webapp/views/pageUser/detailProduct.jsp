<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Detail product</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="shortcut icon" href="/images/logoJava5-removeBg.png"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
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
	<script>
		if("${message}" !== "" ){
			alert("${message}");
		}

		function checking(input){
			if(input.value !== "" && input.value.length > 9){
				document.getElementById('textComment').disabled = false;
				document.getElementById('buttonComment').disabled = false;
				document.getElementById('buttonComment').classList.remove("btn-secondary");
				document.getElementById('buttonComment').classList.add("btn-primary");
			}else{
				document.getElementById('textComment').disabled = true;
				document.getElementById('buttonComment').disabled = true;
				document.getElementById('buttonComment').classList.add("btn-secondary");
				document.getElementById('buttonComment').classList.remove("btn-primary");
			}
		}
	</script>
</head>

<body ng-app="">
	<div class="container">
		<div class="site-navbar-wrap">
			<!-- OnNav -->
			<jsp:include page="/views/layOut/onNavUser.jsp" />
			<!-- Nav -->
			<jsp:include page="/views/layOut/navUser.jsp" />
			<!-- SideBar for user -->
			<jsp:include page="/views/layOut/sidebarUser.jsp" />
			<div class="container mt-4">
				<div class="row bg-light">
					<article class="col-sm-12 mt-2">
						<div class="container-fluid">
							<div>
								<div class="row ">
									<div class="col-sm-5">
										<a href="#" class="text-primary">Điện thoại</a>
										<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
											fill="currentColor" class="bi bi-chevron-right mt-2"
											viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
												d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
                                  </svg>
										<a href="#" class="text-primary">Điện thoại
											${detailItem.nha_sx}</a>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-10 row ml-0">
										<h2 class="h5 mr-3">Điện thoại ${detailItem.ten_dt}</h2>
										<i class="bi bi-star-fill text-warning"></i> <i
											class="bi bi-star-fill text-warning"></i> <i
											class="bi bi-star-fill text-warning"></i> <i
											class="bi bi-star-fill text-warning"></i> <i
											class="bi bi-star text-warning"></i> <a href=""
											class="ml-1 text-primary">782 đánh giá</a> <a href=""
											class="text-primary"><i class="bi bi-plus-circle ml-2 "></i>
											So sánh</a>
									</div>
									<div class="col-sm-2">
										<a href="" class="text-light float-left"><span
											class="badge bg-primary font-weight-normal"><bold
													class="font-weight-bold"> <i
													class="bi bi-hand-thumbs-up"></i> Thích</bold> 876</span></a> <a href=""
											class="text-light float-left ml-2"><span
											class="badge bg-primary font-weight-normal "><bold
													class="font-weight-bold"> Chia sẻ</bold></span></a>
									</div>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-5">
									<div id="carouselExampleIndicators" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="carousel-item active">
												<img class="d-block w-50 m-auto"
													src="/images/phone_images/${detailItem.id_dt}/0.jpg" alt="First slide">
											</div>
											<div class="carousel-item">
												<img class="d-block w-75 m-auto"
													src="/images/phone_images/${detailItem.id_dt}/1.jpg" alt="Second slide">
											</div>
											<div class="carousel-item">
												<img class="d-block w-75 m-auto"
													src="/images/phone_images/${detailItem.id_dt}/2.jpg" alt="Third slide">
											</div>
											<div class="carousel-item">
												<img class="d-block w-75 m-auto"
													src="/images/phone_images/${detailItem.id_dt}/3.jpg" alt="">
											</div>
										</div>
										<a class="carousel-control-prev"
											href="#carouselExampleIndicators" role="button"
											data-slide="prev"> <span
											class="carousel-control-prev-icon" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="carousel-control-next"
											href="#carouselExampleIndicators" role="button"
											data-slide="next"> <span
											class="carousel-control-next-icon" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<div class="row mt-3">
										<div class="col-sm-6">
											<h6 class="font-weight-normal small">
												<svg xmlns="http://www.w3.org/2000/svg" width="36"
													height="36" fill="currentColor"
													class="bi bi-bag-hear text-info" viewBox="0 0 16 16">
                                                <path
														fill-rule="evenodd"
														d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5Zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0ZM14 14V5H2v9a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1ZM8 7.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132Z" />
                                              </svg>
												Hư gì đổi nấy 12 tháng tại 3077 siêu thị toàn quốc (miễn phí
												tháng đầu) <a href="">Xem chi tiết</a>
											</h6>
										</div>
										<div class="col-sm-6">
											<h6 class="font-weight-normal small">
												<svg xmlns="http://www.w3.org/2000/svg" width="36"
													height="36" fill="currentColor"
													class="bi bi-shield-check text-info" viewBox="0 0 16 16">
                                                    <path
														d="M5.338 1.59a61.44 61.44 0 0 0-2.837.856.481.481 0 0 0-.328.39c-.554 4.157.726 7.19 2.253 9.188a10.725 10.725 0 0 0 2.287 2.233c.346.244.652.42.893.533.12.057.218.095.293.118a.55.55 0 0 0 .101.025.615.615 0 0 0 .1-.025c.076-.023.174-.061.294-.118.24-.113.547-.29.893-.533a10.726 10.726 0 0 0 2.287-2.233c1.527-1.997 2.807-5.031 2.253-9.188a.48.48 0 0 0-.328-.39c-.651-.213-1.75-.56-2.837-.855C9.552 1.29 8.531 1.067 8 1.067c-.53 0-1.552.223-2.662.524zM5.072.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.596 4.477-.787 7.795-2.465 9.99a11.775 11.775 0 0 1-2.517 2.453 7.159 7.159 0 0 1-1.048.625c-.28.132-.581.24-.829.24s-.548-.108-.829-.24a7.158 7.158 0 0 1-1.048-.625 11.777 11.777 0 0 1-2.517-2.453C1.928 10.487.545 7.169 1.141 2.692A1.54 1.54 0 0 1 2.185 1.43 62.456 62.456 0 0 1 5.072.56z" />
                                                    <path
														d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                                  </svg>
												Bảo hành chính hãng điện thoại 1 năm tại các trung tâm bảo
												hành hãng <a href="">Xem địa chỉ bảo hành</a>
											</h6>
										</div>
									</div>
									<div class="row col-sm-12">
										<h6 class="font-weight-normal small">
											<svg xmlns="http://www.w3.org/2000/svg" width="36"
												height="36" fill="currentColor"
												class="bi bi-archive text-info" viewBox="0 0 16 16">
                                            <path
													d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z" />
                                          </svg>
											Bộ sản phẩm gồm: Hộp, Sách hướng dẫn, Cây lấy sim, Cáp
											Lightning - Type C <a href="">Xem hình</a>
										</h6>
									</div>
									<div class="row col-sm-12">
										<h2>Đặc điểm nổi bật của ${detailItem.ten_dt}</h2>
										<p class="lead ">${detailItem.mo_ta}</p>
									</div>
									<div class="row col-sm-12">
										<a href="" class="text-primary">Xem ${detailItem.ten_dt} cũ
											giá dưới
											<p class="text-danger">
												<fmt:formatNumber type="number" value="${detailItem.gia}" />
												<sup><u>đ</u></sup> <span
													class="badge bg-secondary text-light">Tiết kiệm 16%
												</span>
											</p>
										</a> <img src="/images/phone_images/${detailItem.id_dt}/2.png" class="d-block"
											width="455" alt="">
									</div>
									<div class="row col-sm-12 mt-4">
										<h5>THÔNG TIN SẢN PHẨM</h5>
										<h6 class="mt-4">${detailItem.ten_dt}-siêu phẩm mang trên mình
											bộ vi xử lý ${detailItem.nha_sx} Bionic hàng đầu, màn hình Super
											Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả
											sẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.</h6>
										<h6 class="mt-3">Thiết kế đẳng cấp, sang trọng</h6>
										<p>${detailItem.ten_dt}
											vẫn sẽ kế thừa thiết kế đặc trưng của <a href=""
												class="text-primary"> ${detailItem.ten_dt}</a>, vẫn là một sản
											phẩm với khung viền được hoàn thiện từ thép không gỉ, hai mặt
											trước sau được trang bị kính cường lực bóng bẩy.
										</p>
									</div>
								</div>
								<ul class="col-7 ">
									<ul class="list-group mt-2">
										<li class="list-group-item border border-white">
											<form class="mt-2">
												<c:forEach var="item" items="${dungLuongVaMau}">
													<button formaction="/item/product/${item.id_dt}" formmethod="get" class="type w-25 text-dark border border-$gray-300">${item.mau}/${item.dung_luong}</button>
												</c:forEach>
											</form>
										</li>
										<li class="list-group-item border border-white">
											<h1 class="h2">${detailItem.ten_dt}</h1>
										</li>
										<li class="list-group-item border border-white">
											<div class="row ml-2">
												<h2 class="h3 text-danger">
													<fmt:formatNumber type="number" value="${detailItem.gia}" />
													<sup><u>đ</u></sup>
												</h2>
												<span
													class="badge badge-secondary muli font-weight-normal mt-2 ml-1">Trả
													góp ${detailItem.tra_gop}%</span>
											</div>
										</li>
										<li class="list-group-item border border-white">
											<p class="result-label temp4">
												<img src="/images/icon6-50x50.png" width="20px"
													height="20px" class="migs" alt="VNPAY Giảm 500K"> <span
													class=""> Luôn có sẵn </span>
											</p> <br> <span class="badge badge-primary">XANH</span> <span
											class="badge badge-light">TRẮNG</span> <span
											class="badge badge-dark">ĐEN</span>
										</li>
										<li class="list-group-item border border-white">
											<div class="card ">
												<div class="card-header">
													<h5 class="card-title h6">
														Khuyến mãi trị giá 1.800.000<sup><u>đ</u></sup>
													</h5>
													<h6 class="card-subtitle mb-2 text-muted small">Giá và
														khuyến mãi dự kiến áp dụng đến 23:00 31/03</h6>
												</div>
												<div class="card-body">
													<div class="card-text">
														<p class="">
															<span
																class="badge rounded-pill bg-primary rounded-circle"
																style="color: white;">1</span> Chọn một trong các khuyến
															mãi
														</p>
													</div>
													<div class="ml-3 mb-2">
														<div class="custom-control custom-radio ">
															<input type="radio" class="custom-control-input"
																id="defaultUnchecked" name="defaultExampleRadios">
															<label class="custom-control-label"
																for="defaultUnchecked">Giảm giá 1,800,000<sup><u>đ</u></sup></label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="custom-control-input"
																id="defaultUnchecked" name="defaultExampleRadios">
															<label class="custom-control-label"
																for="defaultUnchecked">Phiếu mua hàng AVA
																2,700,000<sup><u>đ</u></sup>
															</label>
														</div>
														<div class="custom-control custom-radio">
															<input type="radio" class="custom-control-input"
																id="defaultUnchecked" name="defaultExampleRadios">
															<label class="custom-control-label"
																for="defaultUnchecked">Phiếu mua hàng Bách hóa
																XANH 2,700,000<sup><u>đ</u></sup>
															</label>
														</div>
													</div>
													<div class="card-text">
														<p class="">
															<span
																class="badge rounded-pill bg-primary rounded-circle"
																style="color: white;">2</span> Giảm giá 50% gói bảo hành
															mở rộng thêm 1 năm (chính hãng)
														</p>
														<a href="">Xem chi tiết</a>
													</div>
													<div class="card-text">
														<p class="">
															<span
																class="badge rounded-pill bg-primary rounded-circle"
																style="color: white;">3</span> Giảm đến 1,500,000đ khi
															tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua
															VNPAY, Moca) <a href="">Xem chi tiết</a>
														</p>
													</div>
													<div class="card-text">
														<p class="">
															<span
																class="badge rounded-pill bg-primary rounded-circle"
																style="color: white;">4</span> Giảm 50% giá gói cước 1
															năm (Vina350/Vina500) cho Sim VinaPhone trả sau (Trị giá
															đến 3 triệu)
														</p>
													</div>
													<div class="card-text">
														<a href="item/index" class="text-primary">Xem điện
															thoại</a>
													</div>
												</div>
												<div class="card-footer">
													<p>
														<red style="color:red">(*)</red>
														Giá hoặc khuyến mãi không áp dụng trả góp lãi suất đặc
														biệt (0%, 0.5%, 1%)
													</p>
												</div>
											</div>
											<div class="card-text">
												<p class="">
													<a href="" class="text-primary"><i
														class="bi bi-geo-alt-fill"></i> Chọn địa chỉ nhận hàng</a> để
													biết thời gian giao.
												</p>
											</div>
											<div class="card-text">
												<a href="" class="text-primary"><i class="bi bi-shop"></i>
													Xem siêu thị có hàng</a>
											</div>
											<div class="card-text">
												<a class="btn buy w-100 font-weight-bold text-light"
													href="/cart/add/${detailItem.id_dt}">MUA NGAY</a>
											</div>
											<div class="card-text mt-2 row ml-2 mr-1">
												<div class="row">
													<button class="btn buyTra ml-2 text-light">
														MUA TRẢ GÓP 0%
														<p class="text-light">Duyệt hồ sơ trong 5 phút</p>
													</button>
													<button class="btn buyTra ml-3 text-light">
														TRẢ GÓP 0% QUA THẺ
														<p class="text-light">Visa, Mastercard, JCB, Amex</p>
													</button>
												</div>
											</div>
									</ul>
								</ul>
								<hr>
							</div>
							<div class="row m-0 p-0 bg-white p-4">
								<form action="/item/product/addComment/${detailItem.id_dt}" method="post" class="text-dark col-12 row m-0 p-0">
									<input name="soDienThoai" class="form-control w-25" onkeyup="checking(this)" type="text" placeholder="Số điện thoại">
									<textarea name="noiDung" disabled id="textComment" class="form-control text-dark mt-2" placeholder="Mời bạn để lại đánh giá"></textarea>
									<button disabled id="buttonComment" class="btn btn-secondary col-2 mt-2">Đăng đánh giá</button>
								</form>
								<hr class="col-11 text-gray"/>
								<div class="col-12 row m-0 p-0">
									<c:forEach var="item" items="${DanhGia}">
									<div class="col-12 row m-0 mb-3 mt-3 p-0">
										<h4 class="customerTitle col-12">
											<b>${item.sdt}</b>
										</h4>
										<div class="col-12 row m-0 p-0">
											<div class="col-12 font-italic">${item.noi_dung}</div>
										</div>
									</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
			<!-- The content of your page would go here. -->
			<!-- Footer -->
			<jsp:include page="/views/layOut/footer.jsp" />
		</div>
	</div>
</body>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
