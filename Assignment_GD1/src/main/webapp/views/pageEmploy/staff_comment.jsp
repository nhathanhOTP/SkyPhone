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
    <link href="/staff/commentStyle.css" rel="stylesheet">
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
        <div class="mainContent">
            <form class="theContent">
                <div class="commentTitle mb-3">
                    Đánh giá
                </div>
                <div class="commentTable">
                    <div class="comment row">
                        <div class="customerTitle col-12">
                            Khách hàng <b>Duy Nguyễn</b> đã đánh giá
                        </div>
                        <div class="commentInfor col-4 row">
                            <div class="col-12">Điện thoại: 0912571469</div>
                            <div class="col-12">Sản phẩm đánh giá: <a href="/views/pageUser/detailProduct.jsp">iPhone 13 Pro Max
                                    256GB</a> </div>
                            <div class="col-12">Số sao: 4/5 <i class="fa fa-star" style="color:yellow;"></i></div>
                        </div>
                        <div class="theComment col-7 row">
                            <div class="col-12 font-weight-bold">Mô tả đánh giá:</div>
                            <div class="col-12 font-italic">Sản phẩm rất tuyệt vời, lần đầu tiên tôi không tin tưởng bạn Nhã tuy nhiên sau khi trải nghiệm sản phẩm thì sản phẩm rất tuyệt vời</div>
                        </div>
                        <div class="buttonComment col-12 row">
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:green">Phê
                                    duyệt</button></div>
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:red">Huỷ
                                    bỏ</button></div>
                        </div>
                    </div>
                    <div class="comment row">
                        <div class="customerTitle col-12">
                            Khách hàng <b>Thanh Nhã</b> đã đánh giá
                        </div>
                        <div class="commentInfor col-4 row">
                            <div class="col-12">Điện thoại: 0912571469</div>
                            <div class="col-12">Sản phẩm đánh giá: <a href="/views/pageUser/detailProduct.jsp">iPhone 13 Pro Max
                                    256GB</a> </div>
                            <div class="col-12">Số sao: 4/5 <i class="fa fa-star" style="color:yellow;"></i></div>
                        </div>
                        <div class="theComment col-7 row">
                            <div class="col-12 font-weight-bold">Mô tả đánh giá:</div>
                            <div class="col-12 font-italic">Sản phẩm tuyệt vời vì Nhã không đẹp trai</div>
                        </div>
                        <div class="buttonComment col-12 row">
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:green">Phê
                                    duyệt</button></div>
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:red">Huỷ
                                    bỏ</button></div>
                        </div>
                    </div>
                    <div class="comment row">
                        <div class="customerTitle col-12">
                            Khách hàng <b>Quốc Toàn</b> đã đánh giá
                        </div>
                        <div class="commentInfor col-4 row">
                            <div class="col-12">Điện thoại: 0912571469</div>
                            <div class="col-12">Sản phẩm đánh giá: <a href="/views/pageUser/detailProduct.jsp">iPhone 13 Pro Max
                                    256GB</a> </div>
                            <div class="col-12">Số sao: 4/5 <i class="fa fa-star" style="color:yellow;"></i></div>
                        </div>
                        <div class="theComment col-7 row">
                            <div class="col-12 font-weight-bold">Mô tả đánh giá:</div>
                            <div class="col-12 font-italic">Sản phẩm rất tuyệt vời</div>
                        </div>
                        <div class="buttonComment col-12 row">
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:green">Phê
                                    duyệt</button></div>
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:red">Huỷ
                                    bỏ</button></div>
                        </div>
                    </div>
                    <div class="comment row">
                        <div class="customerTitle col-12">
                            Khách hàng <b>Huy</b> đã đánh giá
                        </div>
                        <div class="commentInfor col-4 row">
                            <div class="col-12">Điện thoại: 0912571469</div>
                            <div class="col-12">Sản phẩm đánh giá: <a href="/views/pageUser/detailProduct.jsp">iPhone 13 Pro Max
                                    256GB</a> </div>
                            <div class="col-12">Số sao: 3/5 <i class="fa fa-star" style="color:yellow;"></i></div>
                        </div>
                        <div class="theComment col-7 row">
                            <div class="col-12 font-weight-bold">Mô tả đánh giá:</div>
                            <div class="col-12 font-italic">Cũng tạm được</div>
                        </div>
                        <div class="buttonComment col-12 row">
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:green">Phê
                                    duyệt</button></div>
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:red">Huỷ
                                    bỏ</button></div>
                        </div>
                    </div>
                    <div class="comment row">
                        <div class="customerTitle col-12">
                            Khách hàng <b>Vy</b> đã đánh giá
                        </div>
                        <div class="commentInfor col-4 row">
                            <div class="col-12">Điện thoại: 0912571469</div>
                            <div class="col-12">Sản phẩm đánh giá: <a href="/views/pageUser/detailProduct.jsp">iPhone 13 Pro Max
                                    256GB</a> </div>
                            <div class="col-12">Số sao: 5/5 <i class="fa fa-star" style="color:yellow;"></i></div>
                        </div>
                        <div class="theComment col-7 row">
                            <div class="col-12 font-weight-bold">Mô tả đánh giá:</div>
                            <div class="col-12 font-italic">Sản phẩm quá xịn</div>
                        </div>
                        <div class="buttonComment col-12 row">
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:green">Phê
                                    duyệt</button></div>
                            <div class="col-12 mb-2"><button class="p-2 w-100 h-100 m-auto" style="color:red">Huỷ
                                    bỏ</button></div>
                        </div>
                    </div>
                </div>
                <div class="centerText row">
                    <button disabled class="col-lg-5 col-sm-12 m-lg-auto mb-sm-2">Trang trước đó</button>
                    <button class="col-lg-5 col-sm-12 m-lg-auto mb-sm-2">Trang tiếp theo</button>
                </div>
            </form>
        </div>
    </div>

</body>

</html>