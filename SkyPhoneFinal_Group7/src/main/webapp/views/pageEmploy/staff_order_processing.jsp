<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhân viên</title>
    <link rel="shortcut icon" href="/images/logoJava5-removeBg.png" type="image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="/staff/style.css" rel="stylesheet">
    <link href="/staff/orderStyle.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/staff/script.js"></script>
    <script>
        var myTime;
        function start(){
            myTime = setInterval('count()', 1000);
        }
        function count(){
            var id = parseInt(document.getElementById('countID').innerHTML);
            id = id - 1;
            document.getElementById('countID').innerHTML = id;
            if(id === 0){
                document.getElementById('confirmButton').disabled = false;
                document.getElementById('confirmButton').style.backgroundColor = 'green';
                document.getElementById('countID').innerHTML = '';
                clearInterval(myTime);
            }
        }

    </script>
</head>
<body onLoad="start()">
    <div class="staffContainer">
        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand text-light" href="#">SKYPHONE</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="text-light">More</span>
            </button>
            <div class="collapse row m-0 p-0 navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav col-lg">
                    <li class="nav-item">
                        <a class="text-light nav-link" href="#">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="text-light nav-link" href="#">Báo cáo hỗ trợ</a>
                    </li>
                </ul>
                <ul class="navbar-nav col-lg row m-0 p-0">
                    <div class="col-12 text-right">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-danger">4</span>
                    </div>
                </ul>
            </div>
        </nav>
        <form class="category" onmouseover="showCategory(this)" onmouseout="closeCategory(this)">
            <a href="/skyPhoneEmploy" class="categoryItem">
                <i class="bi bi-house"></i> &ensp; Trang chủ
            </a>
            <a href="/skyPhoneEmploy/order" class="categoryItem">
                <i class="bi bi-box-seam"></i> &ensp; Đơn hàng
            </a>
            <a href="/skyPhoneEmploy/comment" class="categoryItem">
                <i class="bi bi-filter-square"></i> &ensp; Đánh giá
            </a>
        </form>
        <div class="mainContent row m-0">
            <form class="row col-lg-4 col-sm-12 p-0 m-auto">
                <div class="orderProcessingContent col-lg-12 row p-0 m-0 mb-5 col-sm-6">
                    <div class="orderWaitingContentTitle col-12">Đơn vị vận chuyển</div>
                    <div class="orderCustomerInfor col-12 row p-2 m-0">
                        <div class="col-3 centerComponent"><i class="fa fa-truck" style="font-size:50px"></i></div>
                        <div class="col-9 font-weight-bold" style="color:red;">Đơn vị vận chuyển đang trên đường đến lấy hàng, xin vui lòng thực hiện các bước và bàn giao cho đơn vị vận chuyển
                        </div>
                        <div class="col-12">
                            <textarea class="form-control" placeholder="Để lại ghi chú đơn đội vận chuyển"></textarea>
                            <button class="btn btn-danger w-100 mt-3 mb-2">Gửi ghi chú</button>
                        </div>
                    </div>
                </div>
                <div class="orderProcessingContent col-lg-12 row p-0 m-0 mb-5 col-sm-6">
                    <div class="orderWaitingContentTitle col-12">Các bước thực hiện đơn để bàn giao</div>
                    <div class="orderCustomerInfor col-12 row p-2 m-0">
                        <div class="col-12"><b>Bước 1: </b>Tải hoá đơn tại <a href="#downloadHoaDon">đây</a></div>
                        <div class="col-12"><b>Bước 2: </b>Đóng gói đầy đủ sản phẩm như hoá đơn, sau đó dán hoá đơn lên bưu kiện
                        </div>
                        <div class="col-12"><b>Bước 3: </b>Ký tên và bàn giao cho đơn vị vận chuyển</div>
                        <div class="col-12"><b>Bước 4: </b>Nhấn nút "Đã bàn giao bưu kiện và hoàn thành" để hoàn thành và quay lại trang chủ</div>
                    </div>
                </div>
                <div class="orderProcessingContent col-lg-12 p-0 m-0 mb-5 centerComponent">
                    <button disabled id="confirmButton" formmethod="post" formaction="/skyPhoneEmploy/order/accept/${HoaDon.id_hd}" style="background-color:gray" class="doneButton w-100"><i
                            class="fa fa-check"></i>&nbsp;Đã bàn giao bưu kiện và hoàn
                        thành <span id="countID" class="text-light">30</span></button>
                </div>
            </form>
            <form class="orderProcessingContent row col-lg-7 col-sm-12 p-0 m-auto">
                <div class="orderWaitingContentTitle col-12">Hoá đơn chi tiết</div>
                <div class="orderCustomerInfor col-12 row p-2 m-0">
                    <div class="col-12 font-weight-bold">Thông tin khách hàng</div>
                    <div class="customerInfor col-12 row m-0">
                        <div class="col-12">${HoaDon.ten_nguoi_nhan}</div>
                        <div class="col-12">${HoaDon.sdt_nguoi_nhan}</div>
                        <div class="col-12">${HoaDon.dia_chi_nhan}
                        </div>
                    </div>
                </div>
                <hr class="col-12 m-0 p-0" style="color:gray" />
                <div class="orderInfor col-12 row p-2 m-0">
                    <div class="col-12 font-weight-bold row p-0 m-0">
                        <div class="col-6 text-left">
                            Thông tin đơn hàng
                        </div>
                        <div class="col-6 text-right font-weight-normal">
                            Mã hoá đơn/Mã vận đơn: <span class="font-italic" style="color:red">${HoaDon.id_hd}</span>
                        </div>
                    </div>
                    <c:forEach var="item" items="${HoaDonChiTiet}">
                    <div class="col-12 row p-3 m-0">
                        <div class=" col-3 centerComponent">
                            <img src="/images/phone_images/${item.dienThoai.id_dt}/0.jpg" style="width:50px">
                        </div>
                        <div class="col-5 row p-0 m-0">
                            <div class="col-12">
                                <a href="/item/product/${item.dienThoai.id_dt}">${item.dienThoai.ten_dt}</a>
                            </div>
                            <div class="col-12">
                                Nhà sản xuất: ${item.dienThoai.nha_sx}
                            </div>
                            <div class="col-12">
                                Bảo hành: ${item.dienThoai.bao_hanh}
                            </div>
                        </div>
                        <div class="col-2 centerComponent" style="word-wrap:break-word">
                            <span><fmt:formatNumber value="${item.dienThoai.gia}" type="CURRENCY" currencyCode="VND" /> x ${item.so_luong_don}</span>
                        </div>
                        <div class="col-2 centerComponent" style="word-wrap:break-word">
                            <span><fmt:formatNumber value="${item.tong_gia_dct}" type="CURRENCY" currencyCode="VND" /><span>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                <hr class="col-12 m-0 p-0" style="color:gray" />
                <div class="orderPriceInfor row col-12 m-0 p-0 mb-3">
                    <div class="col-12">
                        <div class="text-right font-weight-bold">Tổng giá trị hoá đơn: </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right"><fmt:formatNumber value="${HoaDon.tong_gia}" type="CURRENCY" currencyCode="VND" /></div>
                    </div>
                    <div class="col-12">
                        <div class="text-right font-weight-bold">Phí vận chuyển: </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right">+13.000đ </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right font-weight-bold">Giảm giá: </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right">-0đ </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right font-weight-bold">Thành tiền: </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right" style="color:red"><fmt:formatNumber value="${HoaDon.tong_gia + 13000}" type="CURRENCY" currencyCode="VND" /></div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>

</html>