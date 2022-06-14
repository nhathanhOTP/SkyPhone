<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SkyPhone - Signup</title>
    <!-- base:css -->
    <link rel="stylesheet" href="/css/cssAdmin/typicons.css">
    <!-- endinject -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/css/cssAdmin/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/images/logoJava5-removeBg.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.1.2/typicons.min.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <style>
        form {
            width: 500px;
        }
    </style>
</head>

<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                            <div class="brand-logo">
                                <img src="/images/logoJava5-removeBg.png" alt="logo">
                                <img id="blah5" class="float-right" src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" alt="" width="130" height="130" style="outline: none; border-radius: 50%;" />
                            </div>
                            <div class="col-lg-12 row">
                                <div>
                                    <h4>Tạo mới?</h4>
                                    <h6 class="font-weight-light">Đăng ký thật dễ dàng chỉ cần một vài bước.</h6>
                                </div>
                                <div class="float-right">

                                </div>
                            </div>
                            <form class="pt-3">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="Tên đăng nhâp">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Số điện thoại">
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="Chứng minh nhân dân">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" placeholder="Họ và tên">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col text-center">
                                        <input type="file" id="file-input5" name="" accept="image/gif, image/jpeg, image/png" onchange="readURL4(this);">
                                        <label for="file-input5" class="file-label5">Upload avatar</label>
                                        <br>
                                        <span id="file-name5" style="font-size: 12px;color: darkgray;" class="text-center"></span>
                                    </div>
                                </div>

                                <div class="mb-4">
                                    <div class="form-check">
                                        <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Tôi đồng ý và chấp nhận các thỏa thuận đăng ký
                    </label>
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="">ĐĂNG KÝ</a>
                                </div>
                                <div class="text-center mt-4 font-weight-light">
                                    Bạn có sẵn sàng tạo tài khoản? <a href="" class="text-primary">Đăng nhập</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- base:js -->
    <script src="/js/jsAdmin/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="/js/jsAdmin/off-canvas.js"></script>
    <script src="/js/jsAdmin/hoverable-collapse.js"></script>
    <script src="/js/jsAdmin/template.js"></script>
    <script src="/js/jsAdmin/settings.js"></script>
    <script src="/js/jsAdmin/todolist.js"></script>
    <script src="/js/jsAdmin/uploadFile.js"></script>
    <!-- endinject -->
</body>

</html>