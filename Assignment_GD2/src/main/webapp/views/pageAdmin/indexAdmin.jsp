<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SkyPhone - Admin</title>
<!-- base:css -->
<link rel="stylesheet" href="/css/cssAdmin/typicons.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="/css/cssAdmin/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="/images/logoJava5-removeBg.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.1.2/typicons.min.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
</head>

<body>
	<div class="container-scroller">
		<!-- Nav -->
		<jsp:include page="/views/layOut/navAdmin.jsp" />
		<!-- End Nav -->
		<div class="container-fluid page-body-wrapper">
			<!-- SettingColor -->
			<jsp:include page="/views/layOut/settingColor.jsp" />
			<!-- partial SidebarAdmin-->
			<jsp:include page="/views/layOut/sidebarAdmin.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Sản phẩm đang được bán</h4>
									<p class="card-description">
										Quản lý
										<code>sản phẩm</code>
									</p>
									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<tr>
													<th></th>
													<th>Tên Sản phẩm</th>
													<th>Dung lượng</th>
													<th>Màu</th>
													<th>Giá</th>
													<th>Trả góp</th>
													<th>Trạng thái</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><img
														src="/images/iphone-13-pro-max-gold-1-200x200.jpg" alt="">
													</td>
													<td>IPhone 13 Pro max gold</td>
													<td>126GB</td>
													<td>Yellow Gold</td>
													<td class="text-danger">28,760000 <i
														class="typcn typcn-arrow-sorted-down"></i></td>
													<td>0 %</td>
													<td><label class="badge badge-success">Đang
															bán</label><br>
														<button class="cancel">Ngừng bán</button></td>
												</tr>
												<tr>
													<td><img src="/images/iphone-13-pro-max-Bac.jpg"
														alt=""></td>
													<td>IPhone 13 Pro max white</td>
													<td>26GB</td>
													<td>White</td>
													<td class="text-danger">21.060000 <i
														class="typcn typcn-arrow-sorted-down"></i></td>
													<td>13 %</td>
													<td><label class="badge badge-success">Đang
															bán</label><br>
														<button class="cancel">Ngừng bán</button></td>
												</tr>
												<tr>
													<td><img src="/images/iphone-13-pro-maxXanhDuong.jpg"
														alt=""></td>
													<td>IPhone 13 Pro max blue</td>
													<td>32GB</td>
													<td>Blue</td>
													<td class="text-danger">35.000000 <i
														class="typcn typcn-arrow-sorted-down"></i></td>
													<td>12 %</td>
													<td><label class="badge badge-success">Đang
															bán</label> <br>
														<button class="cancel">Ngừng bán</button></td>
												</tr>
												<tr>
													<td><img src="/images/iphone-13-pro-maxXam.jpg" alt="">
													</td>
													<td>IPhone 13 Pro max gray</td>
													<td>256GB</td>
													<td>Gray</td>
													<td class="text-success">82.000000 <i
														class="typcn typcn-arrow-sorted-up"></i></td>
													<td>10 %</td>
													<td><label class="badge badge-success">Đang
															bán</label><br>
														<button class="cancel">Ngừng bán</button></td>
												</tr>
												<tr>
													<td><img src="/images/iphone-13-promax-1020x570.jpg"
														alt=""></td>
													<td>IPhone 13 Pro max version limit</td>
													<td>64GB</td>
													<td>Blue sky</td>
													<td class="text-success">98.050000 <i
														class="typcn typcn-arrow-sorted-up"></i></td>
													<td>10 %</td>
													<td><label class="badge badge-success">Đang
															bán</label><br>
														<button class="cancel">Ngừng bán</button></td>
												</tr>
											</tbody>
										</table>
										<nav aria-label="Page navigation example">
											<ul class="pagination mt-3">
												<li class="page-item"><a class="page-link" href="#">Previous</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#">Next</a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 grid-margin text-center"
							style="font-size: 18px;">Các sản phẩm tạm ngưng bán bạn có
							thể cập nhật chúng để hoàn thiện hơn</div>
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Sản phẩm tạm ngưng</h4>
									<p class="card-description">
										Quản lý
										<code>sản phẩm</code>
									</p>
									<p class="card-description">Ghi chú: Click vào ảnh sản phẩm
										để cập nhật</p>
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th></th>
													<th>Tên Sản phẩm</th>
													<th>Dung lượng</th>
													<th>Màu</th>
													<th>Giá</th>
													<th>Trả góp</th>
													<th>Trạng thái</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><a href="/views/pageAdmin/updateProduct.jsp"><img
															src="/images/iphone-13-pro-max-gold-1-200x200.jpg" alt=""></a>
													</td>
													<td>IPhone 13 Pro max gold</td>
													<td>126GB</td>
													<td>Yellow Gold</td>
													<td class="text-danger">28,760000 <i
														class="typcn typcn-arrow-sorted-down"></i></td>
													<td>0 %</td>
													<td><button class="add">Thêm vào</button></td>
												</tr>
												<tr>
													<td><a href=""><img
															src="/images/iphone-13-pro-max-Bac.jpg" alt=""></a></td>
													<td>IPhone 13 Pro max white</td>
													<td>26GB</td>
													<td>White</td>
													<td class="text-danger">21.060000 <i
														class="typcn typcn-arrow-sorted-down"></i></td>
													<td>13 %</td>
													<td><button class="add">Thêm vào</button></td>
												</tr>
												<tr>
													<td><a href=""><img
															src="/images/iphone-13-pro-maxXanhDuong.jpg" alt=""></a>
													</td>
													<td>IPhone 13 Pro max blue</td>
													<td>32GB</td>
													<td>Blue</td>
													<td class="text-danger">35.000000 <i
														class="typcn typcn-arrow-sorted-down"></i></td>
													<td>12 %</td>
													<td><button class="add">Thêm vào</button></td>
												</tr>
												<tr>
													<td><a href=""><img
															src="/images/iphone-13-pro-maxXam.jpg" alt=""></a></td>
													<td>IPhone 13 Pro max gray</td>
													<td>256GB</td>
													<td>Gray</td>
													<td class="text-success">82.000000 <i
														class="typcn typcn-arrow-sorted-up"></i></td>
													<td>10 %</td>
													<td><button class="add">Thêm vào</button></td>
												</tr>
												<tr>
													<td><a href=""><img
															src="/images/iphone-13-promax-1020x570.jpg" alt=""></a>
													</td>
													<td>IPhone 13 Pro max version limit</td>
													<td>64GB</td>
													<td>Blue sky</td>
													<td class="text-success">98.050000 <i
														class="typcn typcn-arrow-sorted-up"></i></td>
													<td>10 %</td>
													<td><button class="add">Thêm vào</button></td>
												</tr>
											</tbody>
										</table>
										<nav aria-label="Page navigation example">
											<ul class="pagination mt-3">
												<li class="page-item"><a class="page-link" href="#">Previous</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#">Next</a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- Footer -->
				<jsp:include page="/views/layOut/footerAdmin.jsp" />
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<script src="/js/jsAdmin/vendor.bundle.base.js"></script>
	<script src="/js/jsAdmin/off-canvas.js"></script>
	<script src="/js/jsAdmin/hoverable-collapse.js"></script>
	<script src="/js/jsAdmin/template.js"></script>
	<script src="/js/jsAdmin/settings.js"></script>
	<script src="/js/jsAdmin/todolist.js"></script>
</body>

</html>
