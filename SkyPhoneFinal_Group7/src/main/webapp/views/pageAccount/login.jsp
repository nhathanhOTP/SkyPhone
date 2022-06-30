<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SkyPhone - Login</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>	
</head>

<body ng-app="">
	<script>
		if ("${message}" != "") { 
			alert("${message}");
		}
		if ("${message}${param.error}" != "") {
			alert("Bạn chưa đăng nhập vui lòng đăng nhập vào hệ thống!")
		}
	</script>
	<div class="container-scroller">
		<div style="margin-bottom:0;" class="alert alert-danger" ng-show="${message}${param.error}" role="alert">Vui lòng đăng nhập
			vào hệ thống !</div>
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left py-5 px-4 px-sm-5">
							<div class="brand-logo">
								<img src="/images/logoJava5-removeBg.png" alt="logo">
							</div>
							<h4>Xin chào! hãy bắt đầu nào</h4>
							<h6 class="font-weight-light">Tiếp tục đăng nhập.</h6>
							<form class="pt-3" method="post" action="/admin/login">
								<div class="form-group">
									<input name="username" type="email"
										class="form-control form-control-lg" id="exampleInputEmail1"
										placeholder="Tên đăng nhập">
								</div>
								<div class="form-group">
									<input name="password" type="password"
										class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Mật khẩu">
								</div>
								<div class="mt-3">
									<button formaction="/admin/login"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										type="submit">Đăng nhập</button>
								</div>
								<div
									class="my-2 d-flex justify-content-between align-items-center">
									<div class="form-check">
										<label class="form-check-label text-muted"> <input
											type="checkbox" class="form-check-input"> Nhớ đến tôi
										</label>
									</div>
									<a href="#" data-toggle="modal" data-target="#exampleModal"
										class="auth-link text-black">Quên mật khẩu?</a>
								</div>
								<div class="mb-2">
									<button type="button"
										class="btn btn-block btn-facebook auth-form-btn">
										<i class="typcn typcn-social-facebook-circular mr-2"></i>Tiếp
										tục với facebook
									</button>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Bạn không có tại khoản? <a href="" class="text-primary">tạo</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header bg-primary text-light">
					<h5 class="modal-title font-weight-bold" id="exampleModalLabel">Quên
						mật khẩu</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true" class="text-light">&times;</span>
					</button>
				</div>
				<form action="/admin/resetPass" method="post">
					<div class="modal-body">
						<div>
							<img
								src="https://pngroyale.com/wp-content/uploads/2021/11/Download-gmail-email-logo-png-1-1.png"
								class="img-fluid" alt="">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Địa chỉ email của bạn</label> <input
								type="email" name="emailForget" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter email"> <small id="emailHelp"
								class="form-text text-muted">Cung cấp email để xác nhận
								tài khoản.</small>
						</div>

					</div>
					<div class="modal-footer">
						<button formaction="/admin/resetPass" class="btn btn-primary"
							type="submit">Đặt lại mật khẩu</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Thoát</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- base:js -->
	<script src="/js/jsAdmin/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="/js/jsAdmin/off-canvas.js"></script>
	<script src="/js/jsAdmin/hoverable-collapse.js"></script>
	<script src="/js/jsAdmin/template.js"></script>
	<script src="/js/jsAdmin/settings.js"></script>
	<script src="/js/jsAdmin/todolist.js"></script>
	<!-- endinject -->
</body>

</html>