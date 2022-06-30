<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<nav class="sidebar sidebar-offcanvas" id="sidebar">
		<ul class="nav">
			<li class="nav-item">
				<div class="d-flex sidebar-profile">
					<div class="sidebar-profile-image">
						<img
							src="https://thuthuatnhanh.com/wp-content/uploads/2019/05/gai-xinh-toc-ngan-facebook.jpg"
							alt="image"> <span class="sidebar-status-indicator"></span>
					</div>
					<div class="sidebar-profile-name">
						<p class="sidebar-name">${user.ho_ten}</p>
						<p class="sidebar-designation">Chào mừng</p>
					</div>
				</div>
				<div class="nav-search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Bạn tìm gì ?"
							aria-label="search" aria-describedby="search">
						<div class="input-group-append">
							<span class="input-group-text" id="search"> <i
								class="typcn typcn-zoom"></i>
							</span>
						</div>
					</div>
				</div>
				<p class="sidebar-menu-title">Quản lý</p>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="/SkyPhone/index"> <i
					class="typcn typcn-device-desktop menu-icon"></i> <span
					class="menu-title">Trang chủ <span
						class="badge badge-primary ml-3">New</span></span>
			</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
				href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
					<i class="typcn typcn-briefcase menu-icon"></i> <span
					class="menu-title">Sản phẩm</span> <i
					class="typcn typcn-chevron-right menu-arrow"></i>
			</a>
				<div class="collapse" id="ui-basic">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="/SkyPhone/admin/dienThoai">Thêm sản phẩm</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/skyPhone/image">Hình sản phẩm</a></li>
					</ul>
				</div></li>
			<li class="nav-item">
			<a class="nav-link" data-toggle="collapse"
				href="#charts" aria-expanded="false" aria-controls="charts"> <i
					class='fa fa-bar-chart'></i> <span class="menu-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thống
						kê</span> <i class="menu-arrow"></i>
			</a>
				<div class="collapse" id="charts">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="/admin/report">Sản phẩm</a></li>
					</ul>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="/SkyPhone/pageAdmin/brandProduct"> <i
					class="typcn typcn-document-text menu-icon"></i> <span
					class="menu-title">Nhãn hàng</span>
			</a></li>


		</ul>
	</nav>
</body>
</html>