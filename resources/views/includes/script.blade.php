<script src="{{asset('assets/vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('assets/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
<script src="{{asset('assets/js/ruang-admin.min.js')}}"></script>

<script type="text/javascript">
    var baseUrl = {!! json_encode(url('/')) !!}
</script>

<!-- Sweet Alert -->
{{-- <script src="{{asset('assets/js/plugin/sweetalert/sweetalert.min.js')}}"></script> --}}
<script src="{{asset('assets/js/plugin/sweetalert2/sweetalert2.all.min.js')}}"></script>
<script src="{{asset('assets/js/plugin/ckeditor/ckeditor.js')}}"></script>

{{-- <script src="{{asset('assets/js/plugin/select2/js/select2.full.min.js')}}"></script> --}}
<script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>

<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>


{{-- Page level plugins --}}
<script src="{{ asset('assets/vendor/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

  <!-- Page level plugins -->
  <script src="{{ asset('assets/vendor/chart.js/Chart.min.js') }}"></script>
  <!-- Page level custom scripts -->
  <script src="{{ asset('assets/js/demo/chart-area-demo.js') }}"></script>
  <script src="{{ asset('assets/js/demo/chart-pie-demo.js') }}"></script>
  <script src="{{ asset('assets/js/demo/chart-bar-demo.js') }}"></script>

<script src="{{asset('assets/js/plugin/echarts/echarts.js')}}"></script>





