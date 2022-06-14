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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/staff/fontawesome-free-6.1.1-web/css/all.css">
    <link rel="stylesheet" href="/staff/fontawesome-free-6.1.1-web/css/all.min.css">
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
        <div class="mainContent">
            <form class="theContent row p-0 m-0">
                <div class="col-12 m-0 mb-3 p-3">
                    <div class="orderTitle" style="color:rgb(55, 98, 158)">Đơn hàng đang xử lý</div><br />
                    <div class="orderTable">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-light bg-dark">Tên khách hàng</th>
                                    <th class="text-light bg-dark">Trạng thái</th>
                                    <th class="text-light bg-dark">Ngày tạo đơn</th>
                                    <th class="text-light bg-dark"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr formaction="staff_comment">
                                    <td>Võ Thanh Nhã</td>
                                    <td class="waiting">Đợi xét duyệt</td>
                                    <td>29/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_wating.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr formaction="staff_comment">
                                    <td>Võ Thanh Nhã</td>
                                    <td class="waiting">Đợi xét duyệt</td>
                                    <td>29/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_wating.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr formaction="staff_comment">
                                    <td>Võ Thanh Nhã</td>
                                    <td class="waiting">Đợi xét duyệt</td>
                                    <td>30/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_wating.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr>
                                    <td>Nguyễn Ngọc Thái Duy</td>
                                    <td class="processing">Đợi đóng gói và xử lý/Chờ giao đơn</td>
                                    <td>28/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_processing.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr>
                                    <td>Nguyễn Ngọc Thái Duy</td>
                                    <td class="processing">Đợi đóng gói và xử lý/Chờ giao đơn</td>
                                    <td>28/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_processing.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="centerText row">
                            <button disabled class="col-lg-1 col-sm-12 m-lg-auto mb-sm-2" style="border-radius:7px;"><i
                                    class="fa fa-caret-left" style="font-size:30px;"></i></button>
                            <button class="col-lg-1 col-sm-12 m-lg-auto mb-sm-2" style="border-radius:7px;"><i
                                    class="fa fa-caret-right" style="font-size:30px;"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-12 m-0 mb-3 p-3">
                    <div class="orderTitle" style="color:rgb(55, 158, 55)">Đơn hàng đã hoàn thành</div><br />
                    <div class="orderTable">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-light bg-dark">Tên khách hàng</th>
                                    <th class="text-light bg-dark">Trạng thái</th>
                                    <th class="text-light bg-dark">Ngày tạo đơn</th>
                                    <th class="text-light bg-dark"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Lê Trần Hoàng Huy</td>
                                    <td class="handled">Đã bàn giao cho vận chuyển</td>
                                    <td>25/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_done.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr>
                                    <td>Lê Quốc Toàn</td>
                                    <td class="handled">Đã bàn giao cho vận chuyển</td>
                                    <td>25/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_done.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr>
                                    <td>Nguyễn Ngọc Thanh Vy</td>
                                    <td class="handled">Đã bàn giao cho vận chuyển</td>
                                    <td>25/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_done.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr>
                                    <td>Nguyễn Ngọc Thanh Vy</td>
                                    <td class="handled">Đã bàn giao cho vận chuyển</td>
                                    <td>25/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_done.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                                <tr>
                                    <td>Nguyễn Ngọc Thanh Vy</td>
                                    <td class="handled">Đã bàn giao cho vận chuyển</td>
                                    <td>24/5/2022</td>
                                    <td><button class="tableButton" formaction="/views/pageEmploy/staff_order_done.jsp"><i
                                                class="fa fa-edit"></i>&ensp;Truy
                                            cập</button></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="centerText row">
                            <button disabled class="col-lg-1 col-sm-12 m-lg-auto mb-sm-2" style="border-radius:7px;"><i
                                    class="fa fa-caret-left" style="font-size:30px;"></i></button>
                            <button class="col-lg-1 col-sm-12 m-lg-auto mb-sm-2" style="border-radius:7px;"><i
                                    class="fa fa-caret-right" style="font-size:30px;"></i></button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>

</html>