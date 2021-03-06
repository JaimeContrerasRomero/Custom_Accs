<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Custom_Accs.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Sistema CUSTOM-ACCS</title>
    <!-- Favicon -->
    <link rel="icon" href="/assets/img/brand/favicon.png" type="image/png" />
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" />
    <!-- Icons -->
    <link rel="stylesheet" href="/assets/vendor/nucleo/css/nucleo.css" type="text/css" />
    <link rel="stylesheet" href="/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css" />
    <!-- Argon CSS -->
    <link rel="stylesheet" href="/assets/css/argon.css?v=1.2.0" type="text/css" />
</head>
<body class="bg-default">

    <div class="main-content">
        <!-- Header -->
        <div class="header bg-gradient-primary py-7 py-lg-5 pt-lg-3">
            <div class="container">
                <div class="header-body text-center mb-7">
                    <div class="row justify-content-center">
                        <div class="col-xl-5 col-lg-6 col-md-8 px-5">
                            <h1 class="text-white">Bienvenid@!</h1>
                            <p class="text-lead text-white">Éste es el sistema para compras de productos CUSTOM-ACSS.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="separator separator-bottom separator-skew zindex-100">
                <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
                    <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
                </svg>
            </div>
        </div>
        <!-- Page content -->
        <div class="container mt--8 pb-5">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-7">
                    <div class="card bg-secondary border-0 mb-0">
                        
                        <div class="card-body px-lg-5 py-lg-5">
                            <div class="text-center text-muted mb-4">
                                <small>Ingrese sus credenciales</small>
                            </div>
                            <form role="form" id="form1" runat="server">
                                <div class="form-group mb-3">
                                    <div class="input-group input-group-merge input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                        </div>
                                        <%--<input class="form-control" placeholder="Email" type="email" />--%>
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email" TextMode="Email" required=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group input-group-merge input-group-alternative">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                        </div>
                                        <%--<input class="form-control" placeholder="Password" type="password" />--%>
                                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password" required=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="custom-control custom-control-alternative custom-checkbox">
                                    <input class="custom-control-input" id=" customCheckLogin" type="checkbox" />
                                    <label class="custom-control-label" for=" customCheckLogin">
                                        <span class="text-muted">Recordarme</span>
                                    </label>
                                </div>
                                <div class="text-center">
                                    <%--<button type="button" class="btn btn-primary my-4">Ingresar</button>--%>
                                    <asp:Button ID="btnIngresar" runat="server" class="btn btn-primary my-4" Text="Ingresar" OnClick="btnIngresar_Click"/>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-6">
                            <a href="#" class="text-light"><small>Olvidó password?</small></a>
                        </div>
                        <div class="col-6 text-right">
                            <a href="#" class="text-light"><small>Crear nueva cuenta</small></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="py-5" id="footer-main">
        <div class="container">
            <div class="row align-items-center justify-content-xl-between">
                <div class="col-xl-6">
                    <div class="copyright text-center text-xl-left text-muted">
                        &copy; 2021 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">CUSTOM-ACCS</a>
                    </div>
                </div>
                <div class="col-xl-6">
                    <ul class="nav nav-footer justify-content-center justify-content-xl-end">
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <script src="/assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/vendor/js-cookie/js.cookie.js"></script>
    <script src="/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
    <!-- Argon JS -->
    <script src="/assets/js/argon.js?v=1.2.0"></script>

</body>
</html>
