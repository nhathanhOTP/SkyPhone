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
    <link href="/staff/style.css" rel="stylesheet">
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
        <form class="mainContent">
            <div class="theContent w-auto h-auto">
                <div class="contentTitle">Xin chào, chúc bạn 1 ngày làm việc tốt lành</div><br />
                <div class="contentList row">
                    <div class="col-lg-5 col-sm-10 m-lg-auto mb-sm-5 card">
                        <div class="card-header font-weight-bold text-center">Đơn hàng chờ duyệt</div>
                        <div class="card-body p-3 row">
                            <div class="col-lg-3 p-1 m-auto">
                                <i class="bi bi-box-seam"></i>
                            </div>
                            <div class="col-lg-8 p-2 font-weight-bold m-auto">
                                <span>${countOrder} chờ duyệt</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button ${countOrder == 0? 'disabled':''} formaction="/skyPhoneEmploy/order">Xử lý ngay</button>
                        </div>
                    </div>
                    <div class="col-lg-5 col-sm-10 m-lg-auto mb-sm-5 card">
                        <div class="card-header font-weight-bold text-center">Đánh giá chờ duyệt</div>
                        <div class="card-body p-3 row">
                            <div class="col-lg-3 p-1 m-auto">
                                <i class="bi bi-filter-square"></i>
                            </div>
                            <div class="col-lg-8 p-2 font-weight-bold m-auto">
                                <span>${countComment} chờ duyệt</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button ${countComment == 0? 'disabled':''} formaction="/skyPhoneEmploy/comment" >Xử lý ngay</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

</body>

</html>