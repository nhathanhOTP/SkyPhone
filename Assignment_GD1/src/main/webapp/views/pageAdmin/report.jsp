<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SkyPhone - Create Product</title>
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
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-sm-6">
							<h3 class="mb-0 font-weight-bold">Thống kê của SkyPhone</h3>
							<p>Mọi danh mục sẽ được báo cáo tại đây.</p>
						</div>
						<div class="col-sm-6">
							<div class="d-flex align-items-center justify-content-md-end">
								<div class="pr-1 mb-3 mr-2 mb-xl-0">
									<button type="button"
										class="btn btn-sm bg-white btn-icon-text border">
										<i class="typcn typcn-arrow-forward-outline mr-2"></i>Export
									</button>
								</div>
								<div class="pr-1 mb-3 mb-xl-0">
									<button type="button"
										class="btn btn-sm bg-white btn-icon-text border">
										<i class="typcn typcn-info-large-outline mr-2"></i>info
									</button>
								</div>
							</div>
						</div>
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="text-center">
										<h4 class="card-title">Thống kê SkyPhone</h4>
										<p class="card-description">
											Các
											<code>sản phẩm</code>
											và những thông tin chi tiết báo cáo tại đây
										</p>
									</div>
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Tổng sản phẩm đang bán</th>
													<th>Tổng sản phẩm tạm ngưng</th>
													<th>Tống số lượng sản phẩm hiện có</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1000</td>
													<td>200</td>
													<td>1200</td>
												</tr>
											</tbody>
										</table>

									</div>
									<hr>
									<div class="text-center">
										<h4 class="card-title">Khách hàng từng mua sản phầm của
											SkyPhone</h4>
									</div>
									<div class="table-responsive">
										<table class="table table-bordered ">
											<thead>
												<tr>
													<th>Anh/Chị</th>
													<th>Số điện thoại</th>
													<th>Tổng hóa đơn</th>
													<th>Phụ trách</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Nguyễn Ngọc Thái Duy</td>
													<td>0374657878</td>
													<td>13,000,000</td>
													<td>Thùy Vi</td>
												</tr>
												<tr>
													<td>Quốc Toàn</td>
													<td>0374768878</td>
													<td>3,590,000</td>
													<td>Thùy Vi</td>
												</tr>
												<tr>
													<td>Huy Hoàng</td>
													<td>0374654563</td>
													<td>1,000,000</td>
													<td>Thùy Vi</td>
												</tr>
												<tr>
													<td>Thanh Vi</td>
													<td>0904657878</td>
													<td>103,000,000</td>
													<td>Thùy Vi</td>
												</tr>
											</tbody>
										</table>
										<nav aria-label="Page navigation example ">
											<ul class="pagination mt-3 float-right">
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
					<!-- content-wrapper ends -->
					<!-- Footer -->
					<jsp:include page="/views/layOut/footerAdmin.jsp" />
				</div>
				<!-- main-panel ends -->
			</div>
			<!-- page-body-wrapper ends -->
		</div>
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
