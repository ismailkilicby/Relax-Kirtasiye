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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/still.css">
    <style>
        body {
            max-width: 100%;
            margin: 0 auto;
            padding: 0;
        }

        .row {
            margin-left: -10px;
            margin-right: -10px;
            max-width: 1300px;
        }

        .carousel-control-prev,
        .carousel-control-next {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            z-index: 1;
        }

        .carousel-control-prev {
            left: 0;
        }

        .carousel-control-next {
            right: 0;
        }

        .custom-row {
            margin-left: -5px;
            margin-right: -5px;
        }

        .custom-card {
            padding-left: 5px;
            padding-right: 5px;
            margin-bottom: 10px;
        }

        .card {
            padding-left: 10px;
            padding-right: 10px;
            border: 3px solid #ddd;
            border-radius: 12px;
            border-color: black;
            overflow: hidden;
        }

        .card-img-top {
            padding-left: 10px;
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
                    <li><a href="profil" class="nav-link px-2 text-white">Profil</a></li>
                </ul>

                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                    <input type="search" class="form-control" placeholder="Ara..." aria-label="Ara">
                </form>

                <div class="dropdown text-end">
                    <a href="#" class="d-block text-decoration-none dropdown-toggle" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <img src="${pageContext.request.contextPath}/image/kullanici.jpg" alt="Kullanıcı" width="32"
                            height="32" class="rounded-circle">
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

    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-black">
                <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                    <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">RELAX KIRTASİYE</span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start " id="menu">
                        <li class="nav-item">
                            <a href="boya" class="nav-link align-middle px-0 text-white">
                                <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline"> Boya ve Resim
                                    Malzemeleri</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="masaustu" class="nav-link align-middle px-0 text-white">
                                <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline"> Masaüstü Gereçleri</span>
                            </a>
                        </li>
                        <li>
                            <a href="kitap" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline text-white">Kitap
                                    Ayraçları</span>
                            </a>
                        </li>
                        <li>
                            <a href="canta" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline text-white">Çanta &
                                    Mataralar</span>
                            </a>
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
            <div class="container">
                <h1>Profilim</h1>

                <div class="row">
                    <!-- User Profile Information -->
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                Kullanıcı Bilgileri
                            </div>
                           <c:forEach var="customer" items="${customers}">
					        <div >
					            <div class="cards">
					                <div class="card-body">
					                    <h4 class="card-title"><b>${customer.username}</b></h4>
					                    <h5 class="card-text">İsim: ${customer.username}</h5>
					                    <h5 class="card-text">Telefon: ${customer.address} ₺</h5>
					                    <p class="card-text">Açıklama: ${customer.password}</p>
					                </div>
					            </div>
					        </div>
					    </c:forEach>
                            
                        </div>
                    </div>
                    <!-- User Orders -->
                    <div class="col-md-8">
                        <h2>Geçmiş Siparişler</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Sipariş Tarihi</th>
                                    <th scope="col">Toplam Tutar</th>
                                    <th scope="col">Durum</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="order" items="${customer.orders}">
                                    <tr>
                                        <td>${order.id}</td>
                                        <td>${order.date}</td>
                                        <td>${order.total}</td>
                                        <td>${order.status}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
