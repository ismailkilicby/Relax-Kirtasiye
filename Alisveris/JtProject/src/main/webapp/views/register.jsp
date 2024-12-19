<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="tr">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
 
    <title>Relax Kırtasiye | Kayıt Ol</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/still.css">
	<style>
	body {
    max-width: 100%;
    margin: 0 auto;
    padding: 0;
}
.row {
    margin-left: -10px; /* Kartlar arasındaki yatay boşluğu azalt */
    margin-right: -10px;
    max-width:1300px;
}

	.carousel-control-prev, .carousel-control-next {
        position: absolute;
        top: 50%; /* Adjust to center vertically */
        transform: translateY(-50%); /* Adjust to center vertically */
        z-index: 1; /* Ensure buttons stay on top of the carousel */
    }

    .carousel-control-prev {
        left: 0;
    }

    .carousel-control-next {
        right: 0;
    }
    .custom-row {
    margin-left: -5px; /* Satırdaki genel boşlukları azaltır */
    margin-right: -5px;
}


.custom-card {
    padding-left: 5px; /* Kartlar arasındaki yatay boşluk */
    padding-right: 5px;
    margin-bottom: 10px; /* Kartlar arasındaki dikey boşluk */
}

.card {
    padding-left: 10px;     
    padding-right: 10px;
    border: 3px solid #ddd; /* Kart kenarlarını belirginleştirmek için */
    border-radius: 12px;
    border-color:black;
    overflow: hidden;
     /* Köşeleri yuvarlatır */
}
.card-img-top{
	padding-left:10px;
}
.row {
    margin-left: -15px;
    margin-right: -15px;
}

.col-md-4 {
    padding-left: 15px;
    padding-right: 15px;
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
                <li><a href="anasayfa" class="nav-link px-2 text-white">Ana Sayfa</a></li>
                <li><a href="kirtasiyeurunleri" class="nav-link px-2 text-white">Kırtasiye Ürünleri</a></li>
                <li><a href="derskitaplari" class="nav-link px-2 text-white">Ders Kitabı</a></li>
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
<div class="container" style="margin-left:100px";>
	<div class="row">
	
    <div class="col-12 col-sm-5">
        <h3 style="margin-top: 10px">Şimdi Kayıt Ol!</h3>
        <p>Lütfen kaydolmak için bunu doldurun</p>
        <form action="newuserregister" method="post">
            <div class="form-group">
                <label for="firstName">Kullanıcı Adı</label>
                <input type="text" name="username" id="firstName" required placeholder="Kullanıcı Adı*" required class="form-control form-control-lg">
            </div>
            <div class="form-group">
                <label for="email">E-mail Adresi</label>
                <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="E-mail*" required name="email" id="email"
                       aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">E-postanızı asla başkalarıyla paylaşmayacağız.</small>
            </div>
            <div class="form-group">
                <label for="password">Şifre</label>
                <input type="password" class="form-control form-control-lg" required placeholder="Şifre*" required name="password"
                       id="password">
            </div>
            <div class="form-group">
                <label for="Address">Adres</label>
                <textarea class="form-control form-control-lg" rows="3" placeholder="Adres Giriniz*" name="address"></textarea>
            </div>
<span style="margin-top: 10px">Hesabınız var mı? <a class="linkControl" href="login">Giriş Yap</a></span> <br><br>
            <input type="submit" value="Kayıt Ol" class="btn btn-dark btn-block"><br>
            <br><h3 style="color:red;">${msg}</h3>
            <br>
        </form>
    </div>
     <div class="col-6 d-none d-lg-block" style="margin-left:50px;margin-top:45px">

                <div class="login__page-img">
                    <picture>
                        <source media="(min-width:1024px)" width="450" height="550" srcset="//i.dr.com.tr/pimages/Content/Uploads/LandingPage/frontend-assets/login-img.webp">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==">
                    </picture>
                </div>

        </div>
</div>

</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
<footer style="background-color: #000000;color: #ffffff;text-align:center;">
    &copy; 2024 Relax Kırtasiye | Tüm Hakları Saklıdır.
</footer>
</html>