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
</head>

<body>
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
            <a href="/views/pageEmploy/staff_main.jsp" class="categoryItem">
                <i class="bi bi-house"></i> &ensp; Trang chủ
            </a>
            <a href="/views/pageEmploy/staff_order.jsp" class="categoryItem">
                <i class="bi bi-box-seam"></i> &ensp; Đơn hàng
            </a>
            <a href="/views/pageEmploy/staff_comment.jsp" class="categoryItem">
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
                    <button formaction="/views/pageEmploy/staff_order_done.jsp" class="doneButton w-100"><i
                            class="fa fa-check"></i>&nbsp;Đã bàn giao bưu kiện và hoàn
                        thành</button>
                </div>
            </form>
            <form class="orderProcessingContent row col-lg-7 col-sm-12 p-0 m-auto">
                <div class="orderWaitingContentTitle col-12">Hoá đơn chi tiết</div>
                <div class="orderCustomerInfor col-12 row p-2 m-0">
                    <div class="col-12 font-weight-bold">Thông tin khách hàng</div>
                    <div class="customerInfor col-12 row m-0">
                        <div class="col-12">Nguyễn Ngọc Thái Duy</div>
                        <div class="col-12">0912571469</div>
                        <div class="col-12">Lô 24, Toà nhà Innovation, CVPM Quang Trung, P.Tân Chánh Hiệp, Quận 12, TP.HCM
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
                            Mã hoá đơn/Mã vận đơn: <span class="font-italic" style="color:red">#SP2344123</span>
                        </div>
                    </div>
                    <div class="col-12 row p-3 m-0">
                        <div class=" col-3 centerComponent">
                            <img src="/images/1.png" style="width:50px">
                        </div>
                        <div class="col-5 row p-0 m-0">
                            <div class="col-12">
                                <a href="/views/pageUser/detailProduct.jsp">iPhone 13 Pro Max
                                    256GB</a>
                            </div>
                            <div class="col-12">
                                Nhà sản xuất: Apple
                            </div>
                            <div class="col-12">
                                Bảo hành: 2 năm
                            </div>
                        </div>
                        <div class="col-2 centerComponent" style="word-wrap:break-word">
                            <span>36.990.000 x 2</span>
                        </div>
                        <div class="col-2 centerComponent" style="word-wrap:break-word">
                            <span>73.980.000đ</span>
                        </div>
                    </div>
                    <div class="col-12 row p-3 m-0">
                        <div class="col-3 centerComponent">
                            <img src="/images/2.png" style="width:50px">
                        </div>
                        <div class="col-5 row p-0 m-0">
                            <div class="col-12">
                                <a href="/views/pageUser/detailProduct.jsp">Tablet Samsung Galaxy S</a>
                            </div>
                            <div class="col-12">
                                Nhà sản xuất: Samsung
                            </div>
                            <div class="col-12">
                                Bảo hành: 2 năm
                            </div>
                        </div>
                        <div class="col-2 centerComponent">
                            <span>12.000.000 x 2</span>
                        </div>
                        <div class="col-2 centerComponent">
                            <span>24.000.000đ</span>
                        </div>
                    </div>
                </div>
                <hr class="col-12 m-0 p-0" style="color:gray" />
                <div class="orderPriceInfor row col-12 m-0 p-0 mb-3">
                    <div class="col-12">
                        <div class="text-right font-weight-bold">Tổng giá trị hoá đơn: </div>
                    </div>
                    <div class="col-12">
                        <div class="text-right">97.980.000đ </div>
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
                        <div class="text-right" style="color:red">97.993.000đ </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>

</html>