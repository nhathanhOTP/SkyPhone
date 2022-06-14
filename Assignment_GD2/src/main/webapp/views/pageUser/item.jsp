<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="container col-7 mb-3">
			<div class="row " style="margin-top: 110px;">
				<div class="float-left  col-lg-6">
					<a href="/item/index"> <span class="text-primary"><i
							class="fa fa-chevron-left" aria-hidden="true"></i> Mua thêm sản
							phẩm khác</span>
					</a>
				</div>
				<div class="text-right col-lg-6 float-right font-weight-bold">Giỏ
					hàng của bạn</div>
			</div>
		</div>
		<!--Page-->
		<div class="container col-7"
			style="box-shadow: 0 0 10px rgb(224, 224, 224); background-color: white;">
			<c:forEach var="item" items="${cart.items}">
				<ul class="listing-cart">
					<li class="row">
						<div class="col-3">
							<a href="/item/product/${item.id}" target="_blank"> <img
								data-src="https://cdn.tgdd.vn/Products/Images/42/250261/iphone-13-pro-max-silver-200x200.jpg"
								src="/images/${item.hinh}" alt="${item.hinh}" loading="lazy"
								class=" ls-is-cached lazyloaded mt-5 img-fluid"></a> <br>
							<div class="row mt-3">
								<a class="btn btn-light img-fluid m-auto text-dark" href="/cart/remove/${item.id}">
									<i class="fa fa-times" aria-hidden="true"></i> Xóa
								</a>
							</div>
						</div>
						<div class="col-9 mt-3"
							data-tmp-price-original="<fmt:formatNumber type="number" value="${item.gia}"/>
							data-tmp-price-discount="
							32490000"
							data-tmp-product-name="${item.tenSp}"
							data-tmp-product-type="2" data-tmp-quantity="1"
							data-tmp-max-quantity="1" class="infosp">
							<div class="name-price">
								<div class="name-container float-left">
									<a href="/dtdd/iphone-13-pro-max-256gb"
										class="product-item__name text-dark font-weight-bold"></a>
								</div>
								<span class="float-right text-danger">
									<p class="text-dark">Giá rẻ</p> <fmt:formatNumber type="number" value="${item.gia}"/>₫ <br> <strike
									class="text-dark"><fmt:formatNumber type="number" value="${item.gia+500}"/>₫</strike>
								</span>
							</div>
							<hr style="width: 65%; visibility: hidden;">

							<p>
								Online <a href="/item/product/${item.id}" class="text-primary">(Xem
									chi tiết ${item.tenSp})</a>
							</p>
							<!---->
							<div class="product-note mt-5">
								<div class="product-note__list active p-4"
									style="background-color: rgba(255, 243, 243, 0.944);">
									<label class="product-note__scenarioTitle">Chính sách
										Online giá rẻ</label>
									<ul style="font-size: 13px;">
										<!---->
										<li class="product-note__list__item">Chỉ áp dụng giao tận
											nơi.</li>
										<li class="product-note__list__item">Thời gian nhận hàng:
											1 ngày sau khi đặt</li>
										<li class="product-note__list__item">Không áp dụng chung
											với khuyến mãi khác.</li>
										<li class="product-note__list__item">Mỗi khách hàng (1
											SĐT) chỉ được mua 1 sản phẩm</li>
										<li class="product-note__list__item">Áp dụng góp Online
											qua thẻ tín dụng</li>
										<li class="product-note__list__item">Bắt buộc khui hộp và
											kích hoạt khi nhận máy</li>
										<li class="product-note__list__item">Không áp dụng góp
											nhà tài chính</li>
										<li class="product-note__list__item">Số lượng có hạn, áp
											dụng tùy tỉnh thành</li>
										<li class="product-note__list__item">Hư gì đổi nấy trong
											15 ngày nếu lỗi do nhà sản xuất</li>
									</ul>
								</div>
							</div>
							<div class="promo"></div>
							<!---->
							<!---->
							<!---->
							<!--fragment#9b08468c86#head-->
							<div class="row">
								<div class="form-group col-xl-7">
									<label for="exampleFormControlSelect1">Màu</label> <select
										class="form-control" id="exampleFormControlSelect1">
										<option>Xanh Dương</option>
										<option>Xám</option>
										<option>Xanh lá</option>
										<option>Vàng Đồng</option>
									</select>
								</div>
								<div class="col-xl-5 smt-2 pt-2">
									<br>
									<nav aria-label="Page navigation example ">
										<ul class="pagination justify-content-end">
											<li class="page-item">
											<a class="page-link text-dark" href="/cart/remove/${item.id}" tabindex="-1">-</a>
											</li>
											<li class="page-item">
											<a class="page-link text-dark" href="#">${item.soLuong}</a>
											</li>
											<li class="page-item">
											<a class="page-link text-dark" href="/cart/add/${item.id}">+</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<!--fragment#9b08468c86#tail-->
							<!---->
						</div> <!---->
					</li>
					<!---->
					<hr>
				</ul>
			</c:forEach>
			<div class="container">
				<div class="row">
					<div class="col-10">
						<h6 class="font-weight-bold float-left">Tạm tính
							(${cart.getCount()} sản phẩm):</h6>
					</div>
					<span class="float-right text-dark font-weight-bold pl-3"><fmt:formatNumber type="number" value="${cart.getAmount()}"/>₫</span>
				</div>
				<div class="bor"></div>
				<div class="mt-3">
					<h6 class="font-weight-bold">THÔNG TIN KHÁCH HÀNG</h6>
					<form action="">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="option1">
							<label class="form-check-label" for="inlineRadio1">Anh</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">
							<label class="form-check-label" for="inlineRadio2">Chị</label>
						</div>
						<div class="row mt-3">
							<div class="col">
								<input type="text" class="form-control" placeholder="Họ và tên">
							</div>
							<div class="col">
								<input type="text" class="form-control"
									placeholder="Số điện thoại">
							</div>
						</div>
						<div class="form-check form-check-inline mt-3 mb-3">
							<input class="form-check-input" type="checkbox" ng-model="all"
								name="inlineRadioOptions" id="inlineRadio1" value="option1">
							<label class="form-check-label" for="inlineRadio1">Giao
								tận nơi</label>
						</div>
						<div>
							<p>Chọn địa chỉ để biết thời gian nhận hàng và phí vận chuyển
								(nếu có)</p>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Thành phố</label> <input type=""
										ng-disabled="!all" class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Quận/Huyện</label> <input type=""
										class="form-control" id="inputPassword4" ng-disabled="!all">
								</div>
								<div class="form-group col-md-6">
									<label for="inputEmail4">Chọn Phường/Xã</label> <input type=""
										ng-disabled="!all" class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Số nhà, tên đường</label> <input
										type="" class="form-control" id="inputPassword4"
										ng-disabled="!all">
								</div>
							</div>
						</div>
						<div class="form-group mt-3">
							<input type="text" class="form-control"
								id="formGroupExampleInput" placeholder="Yêu cầu khác"
								ng-disabled="!all">
						</div>
					</form>
				</div>
				<div class="bor"></div>
				<div class="row mt-4 p-3">
					<h4 class="float-left font-weight-bold col-10">Tổng tiền:</h4>
					<span class="float-right text-danger font-weight-bold pl-4"><fmt:formatNumber type="number" value="${cart.getAmount()}"/>₫</span>
				</div>
				<div>
					<button class="order"
						style="background-color: linear-gradient(180deg, #f79429, #f7712e);">Đặt
						hàng</button>
				</div>
				<div class="text-center text-muted ">
					<p class="pb-4 mt-4">Bạn có thể chọn hình thức thanh toán sau
						khi đặt hàng</p>
				</div>
			</div>
		</div>
		<p class="text-center">Bằng cách đặt hàng, bạn đồng ý với Điều
			khoản sử dụng của SkyPhone</p>
</body>
</html>