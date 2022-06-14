<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyPhone - BrandProduct</title>
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
									<h4 class="card-title">Nhãn hàng của các sản phẩm</h4>
									<p class="card-description">
										Quản lý<code>nhãn hàng sản phẩm</code>
									</p>
									<hr />
									<div class=row>
										<div class="col-lg-6 grid-margin stretch-card">
											<form style="width: 100%;">
												<div class="form-group">
													<p class="card-description text-center">Tùy chỉnh nhãn hàng</p>
													<input type="text" class="form-control w-100"
														id="formGroupExampleInput2" placeholder="Nhãn hàng khác">
													<div class="row mt-4"
														style="display: flex; justify-content: center; align-items: center;">
														<button class="btn btn-success">Thêm vào nhãn
															hàng</button>
														<button class="btn btn-danger ml-3">Sửa nhãn hàng</button>
													</div>
												</div>
											</form>
										</div>
										<div class="col-lg-6 grid-margin stretch-card">
											<div class="table-responsive">
												<p class="card-description text-center">Danh sách các
													nhãn hàng của SkyPhone</p>
												<table class="table table-hover">
													<thead>
														<tr>
															<th>#</th>
															<th>Tên nhãn hàng</th>
															<th>Cập nhật</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>Nokia</td>
															<td>
																<button class="cancel">Chỉnh sửa</button>
															</td>
														</tr>
														<tr>
															<td>2</td>
															<td>Vivo</td>
															<td>
																<button class="cancel">Chỉnh sửa</button>
															</td>
														</tr>
														<tr>
															<td>3</td>
															<td>Apple</td>
															<td>
																<button class="cancel">Chỉnh sửa</button>
															</td>
														</tr>
														<tr>
															<td>4</td>
															<td>SamSung</td>
															<td>
																<button class="cancel">Chỉnh sửa</button>
															</td>
														</tr>
														<tr>
															<td>5</td>
															<td>Xiaomi</td>
															<td>
																<button class="cancel">Chỉnh sửa</button>
															</td>
														</tr>
													</tbody>
												</table>
												<nav aria-label="Page navigation example"
													style="display: flex; justify-content: center; align-items: center;">
													<ul class="pagination mt-3">
														<li class="page-item"><a class="page-link" href="#">First</a></li>
														<li class="page-item"><a class="page-link" href="#">Previous</a></li>
														<li class="page-item"><a class="page-link" href="#">Next</a></li>
														<li class="page-item"><a class="page-link" href="#">Last</a></li>
													</ul>
												</nav>
											</div>
										</div>
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
	<script src="/js/jsAdmin/vendor.bundle.base.js"></script>
	<script src="/js/jsAdmin/off-canvas.js"></script>
	<script src="/js/jsAdmin/hoverable-collapse.js"></script>
	<script src="/js/jsAdmin/template.js"></script>
	<script src="/js/jsAdmin/settings.js"></script>
	<script src="/js/jsAdmin/todolist.js"></script>
</body>
</html>