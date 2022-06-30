<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.form-control:disabled, .form-control[readonly] {
	background-color: #fff;
	opacity: 1;
}
</style>
</head>
<body>
	<div class="card-title">
		<div style="color: black;">
			<b style="font-size: 22px;">Thông tin cá nhân</b>
		</div>
	</div>
	<div class="card-body">
		<form action="/SkyPhoneUser/update/profile" method="post">
			<div class="custom-control custom-radio custom-control-inline">
				<input type="radio" id="customRadioInline1" name="genders"
					class="custom-control-input" checked> <label
					class="custom-control-label" for="customRadioInline1">Anh</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
				<input type="radio" id="customRadioInline2" name="genders"
					class="custom-control-input"> <label
					class="custom-control-label" for="customRadioInline2">Chị</label>
			</div>
			<div class="form-row mt-3">
				<div class="col">
					<input type="text" name="tenNn" class="form-control" placeholder="Vd: Tên anh chị"
						value="${HoaDon.get(0).getTen_nguoi_nhan()}">
				</div>
				<div class="col">
					<input type="text" class="form-control" disabled
						placeholder="Vd: Số điện thoại"
						value="${HoaDon.get(0).getSdt_nguoi_nhan()}">
				</div>
			</div>

			<div style="color: rgb(109, 109, 109);" class="mt-2">
				<b style="font-size: 18px;">Địa chỉ nhận hàng</b>
				<hr>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="gridRadios"
					id="gridRadios1" value="" checked> <label
					class="form-check-label" for="gridRadios1">
					${HoaDon.get(0).getDia_chi_gui()} </label> <br> <label for=""
					class="address">Địa chỉ mặc định</label>
				<div class="text-primary">
					<input ng-model="all" type="checkbox" class="text-primary" />
					Sửa <i class="fa fa-pencil-square-o" aria-hidden="true"></i>

				</div>
				<div class="form-row p-3 trani" ng-hide="!all"
					style="background-color: rgb(232, 232, 232);">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Thành phố</label> <input type="text"
						name="tp" class="form-control"  id="" placeholder="Vd: Hồ Chí Minh">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Quận/Huyện</label> <input type="text"
							 name="quanHuyen"  class="form-control"id=""
							placeholder="Vd: Quận Gò Vấp">
					</div>
					<div class="form-group col-md-6">
						<label for="inputEmail4">Phường/Xã</label> <input type="text"
							name="phuongXa" class="form-control" id=""  placeholder="Vd: Phường 15">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Số nhà, tên đường</label> <input
							name="soNha" type="text" class="form-control" id="" 
							placeholder="Vd: Hẻm 1074 ký túc xá cao cấp">
					</div>
				</div>
				<hr>
				<div class="chinhSua">
					<button class="btn-capNhat">Cập nhật</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>