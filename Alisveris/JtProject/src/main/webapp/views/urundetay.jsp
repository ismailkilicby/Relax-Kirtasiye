<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Relax Kırtasiye | Ürün Detayları</title>
    <link rel="stylesheet" type="text/css" href="webProjesi.css">
    <link rel="icon" href="img/logo3.png" type="image/x-icon" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/still.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    
    <style>

.mySlides {display:none;}

        * {
          overflow-x: hidden;
      }
      h1,h2,h3,h4,h5{
          overflow-y: hidden;
      }
      body {
        background-image: linear-gradient(180deg, #eee, #fff 100px, #fff);
    }

    .jumbotron {
        background-color: #75baff;
    }

    .card-cover {
        background-repeat: no-repeat;
        background-position: center center;
        background-size: cover;
    }

    .site-header {
        background-color: rgba(0, 0, 0, .85);
        -webkit-backdrop-filter: saturate(180%) blur(20px);
        backdrop-filter: saturate(180%) blur(20px);
    }

    .site-header a {
        color: #8e8e8e;
        transition: color .15s ease-in-out;
    }

    .site-header a:hover {
        color: #fff;
        text-decoration: none;
    }

    .product-device {
        position: absolute;
        right: 10%;
        bottom: -30%;
        width: 300px;
        height: 540px;
        background-color: #333;
        border-radius: 21px;
        transform: rotate(30deg);
    }

    .product-device::before {
        position: absolute;
        top: 10%;
        right: 10px;
        bottom: 10%;
        left: 10px;
        content: "";
        background-color: rgba(255, 255, 255, .1);
        border-radius: 5px;
    }

    .product-device-2 {
        top: -25%;
        right: auto;
        bottom: 0;
        left: 5%;
        background-color: #e5e5e5;
    }

    .flex-equal>* {
        flex: 1;
    }

    @media (min-width: 768px) {
        .flex-md-equal>* {
            flex: 1;
        }
    }

    .container {
        max-width: 960px;
    }

    .pricing-header {
        max-width: 700px;
    }

    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }

    .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
    }

    .bi {
        vertical-align: -.125em;
        fill: currentColor;
    }

    .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
    }

    .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
    }

    .navbar {
        background-color: black;
    }

    .bariyer {
        background-color: black;
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
                <li><a href="profil" class="nav-link px-2 text-white">Profil</a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <input type="search" class="form-control" placeholder="Ara..." aria-label="Ara">
            </form>

            <div class="dropdown text-end">
                <a href="#" class="d-block text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="${pageContext.request.contextPath}/image/kullanici.jpg" alt="Kullanıcı" width="32" height="32" class="rounded-circle">
                </a>
                <ul class="dropdown-menu text-small">
                    <li><a class="dropdown-item" href="profil">Profil</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="login">Çıkış Yap</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<style>
    #myCarousel {
        width: 100%;
    }
</style>
<div>
<div class="container-fluid ">
    <div class="row flex-nowrap ">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-black  ">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline"> RELAX KIRTASİYE</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start " id="menu">
                    <li class="nav-item">
                        <a href="boya" class="nav-link align-middle px-0 text-white">Boya ve Resim Malzemeleri  </a>
                    </li>
                    <li class="nav-item">
                        <a href="masaustu" class="nav-link align-middle px-0 text-white"> Masaüstü Gereçleri
                        </a>
                    </li>
                    <li>
                        <a href="kitap" class="nav-link px-0 align-middle text-white">Kitap Ayraçları</a>
                    </li>
                    <li>
                        <a href="canta" class="nav-link px-0 align-middle text-white">Çanta & Mataralar</a>
                    </li>
                    <li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle text-white">Hesabım </a>
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

    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-500 position-relative">
    <br>
    <h2 class="mb-3 " style="margin-left:250px;">Sharp Masaüstü Hesap Makinesi 14 Hane EL-145TBL </h2>
    
        <div class="col p-4 d-flex flex-column position-static">
            
        <div class="w3-content w3-section" style="max-width:500px;margin-left: 1px;">
          <img class="mySlides" src="https://i.dr.com.tr/cache/500x400-0/originals/0002044867001-1.jpg" style="width:100%">
          <img class="mySlides" src="https://i.dr.com.tr/cache/500x400-0/originals/0002044867001-2.jpg" style="width:100%">
         
      </div>
      
      <div>

        <br><br>
        <p class="card-text mb-auto"></p>
        <div style="margin-left:30px;text-align: center;" class="jumbotron bg-light text-black"><br><br>
            <h3 style="margin-left:30px; class=" mb-0">Ürün Detayları</h3><br><br>
Sharp Bilimsel Hesap Makinesi Yeşil EL-531THBGR Blister Ürün Açıklaması
Sharp EL-531THBGR Bilimsel Hesap Makinesi 

273 Fonksiyon

Bağımsız İmleç Tuşları

Çok Satırlı Kayıttan Okuma (denklemin başına veya sonuna atlama)

9 Hafıza

Home Tuşu

MATEMATİK FONKSİYONLARI

Dahili 273 Fonksiyon

Giriş Sistemi: Algebraic (D.A.L.)

1/x, x², √, %, π

Kesirler

HAFIZA

Çok Satırlı Kayıttan Okuma

Son Yanıt Geri Çağırma (ANS)

Hafıza Değişkenleri: 9

İSTATİSTİK FONKSİYONLARI

1-Değişkenli İstatistik

2-Değişkenli İstatistik

Regresyon Hesapları: 6

Ortalama, Standart Sapma

NCr, nPr, n!

Rastgele Sayılar

TRİGONOMETRİK FONKSİYONLAR

DEG/RAD/GRAD Modları

Sin, Cos, Tan ve Tersleri

Hiperbolik Fonksiyonlar

Altmışlık ve Onluk Dönüşümler

Dikdörtgen ve Kutupsal Koordinat Dönüşümleri

SAYI SİSTEMLERİ

Sayı Sistemleri: DEC, BIN, OCT, HEX, PEN

Mantıksal İşlem: AND, OR, NOT, NEG, XOR

SEMBOL GÖSTERİMİ ve ONDALIK BASAMAK

FSE Ekranı (SCI, FIX, ENG)

3 Basamak Ayracı

Pil: AAAx1

Boyutlar: 161 x 80 x 15 mm

Ağırlık: 115 gr 
 
            <br><br><br>
        </div>
        
    </div>
</div>
<div class="col-md-6">
            <p class="text-muted mb-4">Marka: Sharp</p>
            <div class="mb-3">
                <span class="h4 me-2">349₺</span>
                <span class="text-muted"><s>379₺</s></span>
            </div>
            <div class="mb-3">
                <i class="bi bi-star-fill text-warning"></i>
                <i class="bi bi-star-fill text-warning"></i>
                <i class="bi bi-star-fill text-warning"></i>
                <i class="bi bi-star-fill text-warning"></i>
                <i class="bi bi-star-half text-warning"></i>
                <span class="ms-2">4.5 (120 değerlendirme)</span>
            </div>
            <p class="mb-4">Ofis İhtiyaçları İçin İdeal

Geniş 14 Hane Eğimli LCD Ekran

Tax +/- Tuşu: Genellikle KDV ekleme ve çıkarma için kullanılır. KDV oranını kendiniz belirleyebilirsiniz. </p>
            
            <div >
                <label for="quantity" class="form-label">Adet:</label>
                <input type="number" class="form-control" id="quantity" value="1" min="1" style="width: 80px;">
            <button class="btn btn-dark btn-lg mb-3 ">
                    <i class="bi bi-cart-plus"></i> Sepete Ekle
                </button>	
            </div>
            
            
            
        </div>
    </div>

<script src="js/bootstrap.bundle.min.js"></script>
 <script>
        var myIndex = 0;
        carousel();

        function carousel() {
          var i;
          var x = document.getElementsByClassName("mySlides");
          for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";  
          }
          myIndex++;
          if (myIndex > x.length) {myIndex = 1}    
            x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 1000); // Change image every 2 seconds
}
</script>

</main>


                    </body>

                    </html>