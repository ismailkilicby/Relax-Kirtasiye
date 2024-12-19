<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Giriş Yap</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
    	header {
    background-color: #000000; 
    padding: 1rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
}

header .nav-link {
    color: #00327a; 
    transition: color 0.3s ease;
}

header .nav-link:hover {
    color: #fafafa;
}

header .form-control {
    border-radius: 20px;
    border: 2px solid #ffffff;
    transition: border-color 0.3s ease;
}

header .form-control:focus {
    border-color: #003333; 
    outline: none;
}

header .dropdown-menu {
    background-color: #ffffff; 
    border: 1px solid #000000; 
}

header .dropdown-menu .dropdown-item {
    color: #000000; 
}

header .dropdown-menu .dropdown-item:hover {
    background-color: #000000; 
    color: #ffffff; 
}
        body {    /* Dikey ortalama */
    height: 100vh;            /* Ekran yüksekliğini kapla */
    margin: 0;                /* Varsayılan boşlukları sıfırla */
}
        .login-container {
   			max-width: 400px;
    		width: 100%;
    		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    		border-radius: 8px;
    		background: white;
    		padding: 20px;
		}
       .input[type="submit"] {
   			background-color: #000000; 
    		color: white;
		}
    </style>
</head>
<body>
<header class="p-3 mb-3 border-bottom">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
                <img src="${pageContext.request.contextPath}/image/icon.png" alt="Logo" width="40" height="40">
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/" class="nav-link px-2 text-white">Ana Sayfa</a></li>
                <li><a href="/anasayfa" class="nav-link px-2 text-white">Kırtasiye Ürünleri</a></li>
                <li><a href="/derskitaplari.html" class="nav-link px-2 text-white">Ders Kitapları</a></li>
                <li><a href="/sepet.html" class="nav-link px-2 text-white">Sepet</a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <input type="search" class="form-control" placeholder="Ara..." aria-label="Ara">
            </form>

            
        </div>
    </div>
</header>

<div class="container-fluid ">
    <div class="row flex-nowrap ">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-black  ">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline"> RELAX KIRTASİYE</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start " id="menu">
                    <li class="nav-item">
                        <a href="boya" class="nav-link align-middle px-0 text-white">
                            <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline"> Boya ve Resim Malzemeleri</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="masaustu" class="nav-link align-middle px-0 text-white">
                            <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline"> Masaüstü Gereçleri</span>
                        </a>
                    </li>
                    <li>
                        <a href="kitap" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline text-white">Kitap Ayraçları</span></a>
                    </li>
                    <li>
                        <a href="canta" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline text-white">Çanta & Mataralar</span></a>
                    </li>
                    <li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle text-white">
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Hesabım</span> </a>
                        <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="profil" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Profil</span> </a>
                            </li>
                            <li>
                                <a href="sepet" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Sepet</span> </a>
                            </li>
                            
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
<div class="site-main" style="margin-left:-100px";> 
    <link href="https://i.dr.com.tr/themes/prod/DRTheme//assets/dist/css/login.css?ver=1612" rel="stylesheet">
<br>
<br>
<div class="container login-page js-main-container" data-page="Login" data-page-gtm="Login">
    <div class="row">
        <div class="col-12 col-lg-6">
            <div class="row d-flex justify-content-center">
                <div class="col-12 d-flex justify-content-center">
                    <div class="login__page-title">
                        <h3>Giriş Yap</h3>
                    </div>
                </div>
                
                    
            </div>


            <div class="login__form">
                <div class="js-tab-content" data-tab="email">
                    <form action="/userloginvalidate" method="post">
            <div class="form-group">
                <label for="username">Kullanıcı Adı</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="text" name="username" id="username" placeholder="Kullanıcı Adı" required class="form-control form-control-lg">
                </div>
            </div>
            <div class="form-group">
                <label for="password">Şifre</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <input type="password" class="form-control form-control-lg" placeholder="Şifre" required name="password" id="password">
                </div>
            </div>
            <span>Hesabınız yok mu? <a class="linkControl" href="/register">Kayıt Ol!</a></span> <br><br>
            <input type="submit" value="Giriş Yap" class="btn btn-dark btn-black">
            <h3 class="text-center text-danger mt-3">${msg}</h3>
        </form>
                </div>
                
            </div>


        </div>
        <div class="col-6 d-none d-lg-block">

                <div class="login__page-img">
                    <picture>
                        <source media="(min-width:1024px)" width="450" height="550" srcset="//i.dr.com.tr/pimages/Content/Uploads/LandingPage/frontend-assets/login-img.webp">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==">
                    </picture>
                </div>

        </div>
    </div>
</div>


<input type="hidden" value="" class="js-input-redirect">
<input type="hidden" value="0" class="js-input-email-validation">
<input type="hidden" value="0" class="js-input-gsm-validation">
<script src="https://i.dr.com.tr/themes/prod/DRTheme//assets/dist/js/validationPopups.min.js?ver=1612"></script>
<script type="text/javascript" src="https://i.dr.com.tr/themes/prod/DRTheme//assets/dist/js/signin.min.js?ver=1612"></script>

 </div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
 <br><br>
<footer style="background-color: #000000;color: #ffffff;text-align:center;">
    &copy; 2024 Relax Kırtasiye | Tüm Hakları Saklıdır.
</footer>
</html>
