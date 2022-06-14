<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.funn {
	align-items: center;
	display: flex;
	justify-content: center;
}

.cartempty .cartnew-empty {
	background-image:
		url(https://cdn.tgdd.vn/mwgcart/vue-pro/css/img/cart-mobile-1.png);
	background-position: 0 -98px;
	width: 70px;
	height: 55px;
}

.cartempty i {
	margin: auto;
}

.cartempty, .cartempty i {
	display: block;
	overflow: hidden;
}

.cartnew-empty {
	background-position: 0 -98px;
	width: 70px;
	height: 55px;
}

[class*="cartnew-"], [class^="cartnew-"] {
	background-image: url(../img/cart-mobile-1.png);
	background-repeat: no-repeat;
	display: inline-block;
	height: 30px;
	width: 30px;
	line-height: 30px;
	vertical-align: middle;
	background-size: 133px 305px;
}

.lution {
	padding: 0;
	box-sizing: border-box;
	margin-top: 175px;
}

.backhome {
	text-decoration: none;
	border: 1px solid rgb(120, 120, 255);
	font-weight: bold;
	background-color: #f0f0f0;
}

body {
	position: relative;
	max-height:600px;
}

.backhome:hover {
	text-decoration: none;
}
</style>
</head>
<body>
	<section class="funn lution">
		<div class="cartempty text-center">
			<i class="cartnew-empty"></i> <span>Không có sản phẩm nào
				trong giỏ hàng</span><br> <a href="/item/index"
				class="backhome form-control text-primary mt-2 mb-2">Về trang
				chủ</a>
			<p style="font-size: 16;" class="ml-5 mr-5">
				Khi cần trợ giúp vui lòng gọi <a style="color: #288ad6"
					href="tel:18001060">1800.1060</a> hoặc <a style="color: #288ad6"
					href="tel:02836221060">028.3622.1060</a> (7h30 - 22h)
			</p>
		</div>
	</section>
</body>
</html>