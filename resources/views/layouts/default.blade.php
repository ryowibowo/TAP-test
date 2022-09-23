<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="{{ asset('assets/img/logo/logo.png') }}" rel="shortcut icon" type="image/x-icon">
  <title>TAP Dashboard - @yield('title') </title>
  @include('includes.style')
  @yield('pageCss')
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    @include('includes.sidebar')
    <!-- Sidebar -->

    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        @include('includes.navbar')
        <!-- Topbar -->

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
            @yield('content')
            
            @include('includes.modal')
        </div>
        <!---Container Fluid-->
      </div>
      <!-- Footer -->
      @include('includes.footer')
      <!-- Footer -->
    </div>
  </div>

  <!-- Scroll to top -->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

   <!--scrtipt -->
   @stack('before-script')

   @include('includes.script')
   
   @stack('after-script')

   @yield('pageJs')
</body>

</html>