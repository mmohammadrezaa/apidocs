<!DOCTYPE html>
<html lang="en" data-textdirection="rtl" class="loading">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="_token" content="{{csrf_token()}}" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>پنل کاربری</title>
    <link rel="apple-touch-icon" sizes="60x60" href="{{ url('themes/app-assets/images/ico/apple-icon-60.png')}}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ url('themes/app-assets/images/ico/apple-icon-76.png')}}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ url('themes/app-assets/images/ico/apple-icon-120.png')}}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ url('themes/app-assets/images/ico/apple-icon-152.png')}}">
    <link rel="shortcut icon" type="image/x-icon" href="{{ url('themes/app-assets/images/ico/favicon.ico')}}">
    <link rel="shortcut icon" type="image/png" href="{{ url('themes/app-assets/images/ico/favicon-32.png')}}">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/bootstrap.css')}}">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/fonts/icomoon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/fonts/flag-icon-css/css/flag-icon.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/vendors/css/extensions/pace.css')}}">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/bootstrap-extended.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/app.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/colors.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/custom-rtl.css')}}">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/core/menu/menu-types/vertical-menu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/core/menu/menu-types/vertical-overlay-menu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ url('themes/app-assets/css-rtl/core/colors/palette-gradient.css')}}">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ url('themes/assets/css/style-rtl.css')}}">
    <link rel="stylesheet" href="{{ url('themes/app-assets/js/chosen/docsupport/prism.css') }}">
    <link rel="stylesheet" href="{{ url('themes/app-assets/js/chosen/chosen.css') }}">
    <link rel="stylesheet" href="{{ url('themes/app-assets/js/markdown/vendors.bundle.css') }}">

    <!-- END Custom CSS-->
    <link rel="stylesheet" href="{{ url('themes/assets/datepicker/css/persianDatepicker.css')}}"/>
    <script src="{{ url('themes/assets/datepicker/js/jquery-1.10.1.min.js')}}"></script>
    <script src="{{ url('themes/assets/datepicker/js/persianDatepicker.js')}}"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <script>
        WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>
</head>
<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

<!-- navbar-fixed-top-->
<nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
    <div class="navbar-wrapper">
        <div class="navbar-header">
            <ul class="nav navbar-nav">
                <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
                <li class="nav-item"><a href="index.html" class="navbar-brand nav-link" style="color: #ffffff">لوگو سایت</a></li>
                <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
            </ul>
        </div>
        <div class="navbar-container content container-fluid">
            <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
                <ul class="nav navbar-nav">
                    <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5">         </i></a></li>
                    <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon icon-expand2"></i></a></li>

                </ul>
                <ul class="nav navbar-nav float-xs-right">
                    <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="../../storage/app/avatars/" alt="avatar"><i></i></span><span class="user-name"></span></a>
                        <div class="dropdown-menu dropdown-menu-right"><a href="{{ url('EditProfile/') }}" class="dropdown-item"><i class="icon-head"></i> ویرایش پروفایل</a>
                            <div class="dropdown-divider"></div><a href="{{ url('logout') }}" class="dropdown-item"><i class="icon-power3"></i> خروج</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<!-- ////////////////////////////////////////////////////////////////////////////-->

<!-- main menu-->
<div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
    <!-- main menu header-->

    <!-- / main menu header-->
    <!-- main menu content-->
    <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
            <li class="@if(url()->current() == url('Dashboard')) active @endif nav-item"><a href="{{ url('Dashboard')}}"><i class="icon-home3"></i><span data-i18n="nav.dash.main" class="menu-title">داشبورد</span></a></li>

            <li class="nav-item has-sub @if(url()->current() == url('Add') || url()->current() == url('List') || url()->current() == url('Edited/'.@$Edit['id'])) open @endif"><a href="#"><i class="icon-layers"></i><span data-i18n="nav.dash.main" class="menu-title">documents</span></a>
                <ul class="menu-content">
                    <li class="@if(url()->current() == url('Add') || url()->current() == url('Edited/'.@$Edit['id'])) active @endif"><a href="{{ url('dd')}}" data-i18n="nav.icons.icons_feather" class="menu-item"><i class="icon-plus" style="margin-top: 4px;"></i>افزودن</a></li>
                    <li class="@if(url()->current() == url('List')) open @endif"><a href="{{ url('List')}}" data-i18n="nav.icons.icons_ionicons" class="menu-item"><i class="icon-erlenmeyer-flask-bubbles" style="margin-top: 4px;"></i>لیست</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- /main menu content-->
    <!-- main menu footer-->
    <!-- include includes/menu-footer-->
    <!-- main menu footer-->
</div>
<!-- / main menu-->

<div class="app-content content container-fluid">
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body" style="min-height: 500px"><!-- stats -->
            @if(Session::has('messages'))<div class="alert alert-success" role="alert"><strong>انجام شد :</strong>{{ Session::get('messages') }}</div>@endif
            @if(Session::has('messagee'))<div class="alert alert-danger" role="alert"><strong>خطا : </strong>{{ Session::get('messagee') }}</div>@endif
            @yield('content')
        </div>
    </div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->


<footer class="footer footer-static footer-light navbar-border">
    <p class="clearfix text-muted text-sm-center mb-0 px-2"><span class="float-md-right d-xs-block d-md-inline-block">Copyright  &copy; 2018 <a href="https://ersadid.com" target="_blank" class="text-bold-800 grey darken-2">Ersadid.com </a>, All rights reserved </span><span class="float-md-left d-xs-block d-md-inline-block">ساخته شده با <i class="icon-heart pink"></i></span></p>
</footer>

<!-- BEGIN VENDOR JS-->
<script src="{{ url('themes/app-assets/js/core/libraries/jquery.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/ui/tether.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/js/core/libraries/bootstrap.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/ui/unison.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/ui/blockUI.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/ui/jquery.matchHeight-min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/ui/screenfull.min.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/vendors/js/extensions/pace.min.js')}}" type="text/javascript"></script>
<!-- BEGIN VENDOR JS-->
<!-- BEGIN PAGE VENDOR JS-->
<script src="{{ url('themes/app-assets/vendors/js/charts/chart.min.js')}}" type="text/javascript"></script>
<!-- END PAGE VENDOR JS-->
<!-- BEGIN ROBUST JS-->
<script src="{{ url('themes/app-assets/js/core/app-menu.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/js/core/app.js')}}" type="text/javascript"></script>
<!-- END ROBUST JS-->
<!-- BEGIN PAGE LEVEL JS-->
<script src="{{ url('themes/app-assets/js/scripts/pages/dashboard-lite.js')}}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/js/chosen/chosen.jquery.js') }}"></script>
<script src="{{ url('themes/app-assets/js/chosen/docsupport/jquery-3.2.1.min.js') }}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/js/chosen/chosen.jquery.js') }}" type="text/javascript"></script>
<script src="{{ url('themes/app-assets/js/chosen/docsupport/prism.js') }}" type="text/javascript" charset="utf-8"></script>
<script src="{{ url('themes/app-assets/js/chosen/docsupport/init.js') }}" type="text/javascript" charset="utf-8"></script>
<script src="{{ url('themes/app-assets/js/markdown/bootstrap-markdown.js') }}" type="text/javascript" charset="utf-8"></script>
<script src="{{ url('themes/app-assets/js/markdown/vendors.bundle.js') }}" type="text/javascript" charset="utf-8"></script>
<script src="{{ url('themes/app-assets/js/select/bootstrap-select.js') }}"></script>
<script>
    $('.chosen-select').chosen();

</script>
<!-- END PAGE LEVEL JS-->
</body>
</html>