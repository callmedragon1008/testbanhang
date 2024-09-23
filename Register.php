<?php
    if (isset($_GET['tontai']))
        echo '
        <script>
            alert("Tên đăng nhập đã tồn tại")
        </script>
        '
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./asset/css/style.css">
    <link rel="stylesheet" href="./node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link href="./asset/themify-icons/themify-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="./asset/fonts/remixicon.css">
    <title>Hello World</title>
</head>
<body id="body-login">
    <div class="vh-10">
        <div class="dropdown pb-4">
            <a href="./index.php" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-decoration-none">
                <i class="ri-logout-box-line"></i><h3 class="fs-5 d-none d-sm-inline" style="font-size: 26px;color: black;">Trang chủ</h3>
            </a>
        </div>
    </div>
    <section class="vh-100 text-dark" id="login">
        <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5" style="margin-top: 180px;">
            <img src="./asset/image/dang-ky-dai-ly-sim-the-dien-thoai-cac-nha-mang-di-dong-tai-viet-nam-removebg-preview.png"
                class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
            <form action="login.php" method="POST" onsubmit="return validateForm()">
                <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                <p class="lead fw-bold text-center mb-0 me-3">Đăng ký</p>
                </div>
                <br>

                <!-- name input -->
                <i class="ri-user-fill"> Tên tài khoản</i>
                <div class="form-outline mb-4">
                <input name="name" type="name" id="nameinput" class="form-control form-control-lg"
                    placeholder="Nhập tên tài khoản" />
                <label class="form-label" for="nameinput"></label>
                </div>

                <!-- Email input -->
                <i class="ri-mail-fill"> Email</i>
                <div class="form-outline mb-4">
                <input name="email" type="text" id="form3Example3" class="form-control form-control-lg"
                    placeholder="Nhập email" />
                <label class="form-label" for="form3Example3"></label>
                </div>
    
                <!-- Password input -->
                <i class="ri-lock-fill"> Mật khẩu</i>
                <div class="form-outline mb-3">
                <input name="password" type="password" id="form3Example4" class="form-control form-control-lg"
                    placeholder="Nhập mật khẩu" />
                <label class="form-label" for="form3Example4"></label>
                </div>
                <!-- repeat Password input -->
                <i class="ri-key-fill"> Nhập lại mật khẩu</i>
                <div class="form-outline mb-3">
                    <input type="password" id="form3Example4d" class="form-control form-control-lg"
                        placeholder="Nhập lại mật khẩu" />
                    <label class="form-label" for="form3Example4d"></label>
                    </div>
                <div class="d-flex justify-content-between align-items-center">
                </div>
    
                <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg js-login-button"
                        style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng ký</button>

                </div>
    
                <div class="text-center text-lg-start mt-4 pt-2">
                    <p class="small fw-bold mt-2 pt-1 mb-0">Đã có tài khoản? <a href="login.php"
                        class="link-danger">Đăng Nhập</a></p>
                    </div>
            </form>
            </div>
        </div>
        <!-- Right -->
        </div>
    </section>
    <script>
    function validateForm(){
            var username = document.getElementById("nameinput");
            var email = document.getElementById("form3Example3");
            var password = document.getElementById("form3Example4");
            var repassword = document.getElementById("form3Example4d");
            if (!username.value || !email.value || !password.value || !repassword.value) {
                alert("Vui lòng nhập đầy đủ thông tin");
                return false;
            }
            if (email.value.indexOf("@gmail.com")==-1) {
                alert("Email không hợp lệ")
                return false;
            }
            if (password.value != repassword.value) {
                alert("Mật khẩu không khớp");
                return false;
            }
        return true;
}
    </script>
</body>
</html>
