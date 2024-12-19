<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="tr">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relax Kırtasiye | Kategoriler</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/still.css">
	<style>
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
        <div class="col py-3">
            <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://i.dr.com.tr/pimages/Content/Uploads/BannerFiles/dr/skec-dr-aralik-anasayfa_1200x390.webp" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://i.dr.com.tr/pimages/Content/Uploads/BannerFiles/dr/lego-aralik-dr-anasayfa_1200x390.webp" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://i.dr.com.tr/pimages/Content/Uploads/BannerFiles/dr/anasayfa_1200x390-dr021220240902.webp" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
            <br><br>
            <h1 class="text-center mb-4">Tüm Kategoriler</h1>
            <div class="category-container">
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/notebook.png" alt="Kırtasiye">
                    <a href="kirtasiyeurunleri">Kırtasiye</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/backpack.png" alt="Çantalar & Mataralar">
                    <a href="canta">Çantalar & Mataralar</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/pencil.png" alt="Kalemler">
                    <a href="kalem">Kalemler</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/book.png" alt="Defterler">
                    <a href="defter">Defterler</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/organize.png" alt="Organizasyon Ürünleri">
                    <a href="organizasyon">Organizasyon Ürünleri</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/desk.png" alt="Masaüstü Gereçleri">
                    <a href="masaustu">Masaüstü Gereçleri</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/paint.png" alt="Boya ve Resim Malzemeleri">
                    <a href="boya">Boya ve Resim Malzemeleri</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/paper.png" alt="Kağıt Ürünleri">
                    <a href="kagit">Kağıt Ürünleri</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/eraser.png" alt="Silgi ve Kalemtraşlar">
                    <a href="silgi">Silgi ve Kalemtraşlar</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/tech.png" alt="Ofis Teknolojileri">
                    <a href="ofis">Ofis Teknolojileri</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/bookmark.png" alt="Kitap Ayraçları">
                    <a href="kitap">Kitap Ayraçları</a>
                </div>
                <div class="category-card">
                    <img src="${pageContext.request.contextPath}/image/oyuncak.png" alt="Oyuncak">
                    <a href="oyuncak">Oyuncak</a>
                </div>
            </div>
        </div>
    </div>
</div>
<br>




<footer style="background-color: #000000;color: #ffffff">
    &copy; 2024 Relax Kırtasiye | Tüm Hakları Saklıdır.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
