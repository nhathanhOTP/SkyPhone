<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
    <div class="card-title">
        <div style="color: black;">
            <b style="font-size: 22px;">Thông tin cá nhân</b>
        </div>
    </div>
    <div class="card-body">
        <form>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline1" name="genders" class="custom-control-input" checked>
                <label class="custom-control-label" for="customRadioInline1">Anh</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="customRadioInline2" name="genders" class="custom-control-input">
                <label class="custom-control-label" for="customRadioInline2">Chị</label>
            </div>
            <div class="form-row mt-3">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Tên anh chị" value="Võ Thanh Nhã">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="Số điện thoại" value="0374038128">
                </div>
            </div>

            <div style="color: rgb(109, 109, 109);" class="mt-2">
                <b style="font-size: 18px;">Địa chỉ nhận hàng</b>
                <hr>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                <label class="form-check-label" for="gridRadios1">
                    Hẻm 1074, ký túc xá cao cấp, Phường 15, Quận Gò Vấp, Hồ Chí Minh
                    </label>
                <br>
                <label for="" class="address">Địa chỉ mặc định</label>
                <div class="text-primary">
                    <input href="" ng-model="all" type="checkbox" class="text-primary" /> Sửa <i class="fa fa-pencil-square-o" aria-hidden="true"></i>

                </div>
                <div class="form-row p-3 trani" ng-hide="!all" style="background-color: rgb(232, 232, 232);">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Thành phố</label>
                        <input type="" class="form-control" id="inputEmail4" value="Hồ Chí Minh">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Quận/Huyện</label>
                        <input type="" class="form-control" id="inputPassword4" value="Quận Gò Vấp">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Phường/Xã</label>
                        <input type="" class="form-control" id="inputEmail4" value=" Phường 15">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Số nhà, tên đường</label>
                        <input type="" class="form-control" id="inputPassword4" value="Hẻm 1074 ký túc xá cao cấp">
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