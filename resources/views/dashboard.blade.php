@extends('layouts.default')
@section('title', 'Dashboard')

@section('content')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
        </ol>
    </div>
    <div class="row mb-3">
    {{-- Earnings (Monthly) Card Example --}}

        {{-- Area Chart --}}
        <div class="col-xl-7 col-lg-7">
            <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                </div>
                <div id="map" style="height: 600px"></div>  
                <div class="container">
                    <br />
                    <form method="post" id="upload_form" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <table class="table">
                                <tr>
                                    <p>Upload KML FILE</p>
                                    <td width="30"><input type="file" name="select_file" id="select_file" /></td>
                                    <td width="30%" align="left"><input type="submit" name="upload" id="upload" class="btn btn-primary" value="Upload"></td>
                                </tr>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <div class="col-xl-5 col-lg-5">
            <div class="row mb-3">
                <div class="col-xl-12 col-lg-12">
                    <div class="card mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Monitoring Panen Harian</h6>
                        </div>
                        <div class="card-body">
                            {{-- <div class="chart-container">
                                <div class="chart has-fixed-height" id="line_stacked"></div>
                            </div> --}}
                            <div id="line_stacked" style="width: 450;height:400px;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12 col-lg-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                          <h6 class="m-0 font-weight-bold text-primary">MTD: ACTUAL VS BBC (%)</h6>
                        </div>
                        <div class="card-body">
                          <div class="chart-pie pt-4">
                            <canvas id="myPieChart"></canvas>
                          </div>
                          <hr>
                        </div>
                      </div>
                </div>

                <div class="col-xl-12 col-lg-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                          <h6 class="m-0 font-weight-bold text-primary">Pencapaian (%)</h6>
                        </div>
                        <div class="card-body">
                          <div class="chart-bar">
                            <canvas id="myBarChart"></canvas>
                          </div>
                          <hr>
                        </div>
                    </div>
                </div>
               

            </div>
        </div>

        {{-- Pie Chart --}}
       

        {{-- Invoice Example --}}

        {{-- Message From Customer--}}
       
    </div>

    {{-- <div class="container-fluid">
        <div class="row">
          <div class="col-6" style="background:blue">
          </div>
          <div class="col-6">
            <div class="row">
              <div class="col-12" style="background:green">
              </div>
              <div class="col-12" style="background:orange">
              </div>
              <div class="col-12" style="background:red">
              </div>
            </div>
          </div>
        </div>
    </div> --}}
@endsection

@push('after-script')
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
crossorigin="">
</script>
<script>
        var cData = JSON.parse(`<?php echo $final; ?>`);
        console.log(cData[0])
        var ctx = document.getElementById("myPieChart");
        var myPieChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ["Actual", "BBC"],
                datasets: [{
                data: cData,
                backgroundColor: ['#1cc88a', '#36b9cc'],
                hoverBackgroundColor: ['#17a673', '#2c9faf'],
                hoverBorderColor: "rgba(234, 236, 244, 1)",
                }],
            },
            options: {
                maintainAspectRatio: false,
                tooltips: {
                backgroundColor: "rgb(255,255,255)",
                bodyFontColor: "#858796",
                borderColor: '#dddfeb',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                },
                legend: {
                display: false
                },
                cutoutPercentage: 80,
            },

            plugins: [{
                    id: 'text',
                    beforeDraw: function(chart, a, b) {
                    var width = chart.width,
                        height = chart.height,
                        ctx = chart.ctx;

                    ctx.restore();
                    var fontSize = (height / 114).toFixed(2);
                    ctx.font = fontSize + "em sans-serif";
                    ctx.textBaseline = "middle";

                    var text = cData[0],
                        textX = Math.round((width - ctx.measureText(text).width) / 2),
                        textY = height / 2;

                    ctx.fillText(text, textX, textY);
                    ctx.save();
                    }
            }]
            
        });
        
        //pencapaian
    
        var chartColors = {
            red: 'rgb(220,20,60)',
            green: 'rgb(50,205,50)',
            yellow: 'rgb(255,255,0)'
        };
        
        var ctx = document.getElementById("myBarChart").getContext("2d");
        var labelMonth = JSON.parse(`<?php echo $code; ?>`);
        var valueData = JSON.parse(`<?php echo $value; ?>`);
        var myBarChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labelMonth,
                datasets: [{
                    label: 'Pencapaian',
                    backgroundColor: [
                        chartColors.blue,
                        chartColors.blue,
                        chartColors.blue,
                        chartColors.blue
                ],
                data: valueData
      }],
            },
            options: {
                maintainAspectRatio: false,
                layout: {
                    padding: {
                        left: 10,
                        right: 25,
                        top: 25,
                        bottom: 0
                    }
                },
               
                legend: {
                    display: false
                },
                
            }
        });

        // var colorChangeValue = 50; //set this to whatever is the deciding color change value
        var dataset = myBarChart.data.datasets[0];
        console.log(dataset);
        for (var i = 0; i < dataset.data.length; i++) {
            if (dataset.data[i]  >= 0 && dataset.data[i] < 76) {
                dataset.backgroundColor[i] = chartColors.red;
            } else if (dataset.data[i]  >= 76 && dataset.data[i] <= 100) {
                dataset.backgroundColor[i] = chartColors.yellow;
            } else {
                dataset.backgroundColor[i] = chartColors.green;
            }
        }
        myBarChart.update();

        

        //monitoring
        var line_stacked_element = document.getElementById('line_stacked');
        var period = JSON.parse(`<?php echo $dataTanggal; ?>`);
        var dataActual = JSON.parse(`<?php echo $dataActual; ?>`);
        var dataTarget = JSON.parse(`<?php echo $dataTarget; ?>`);
        var dataBbc = JSON.parse(`<?php echo $dataBbc; ?>`);
        var dataAvg = JSON.parse(`<?php echo $dataAvg; ?>`);

        if (line_stacked_element) {
            var line_stacked = echarts.init(line_stacked_element);
            line_stacked.setOption({
                legend: {},
                xAxis: {
                type: 'category',
                data: period
                },
                yAxis: {
                type: 'value'
                },
                series: [
                {
                    name: 'Actual',
                    type: 'line',
                    step: 'start',
                    data: dataActual
                },
                {
                    name: 'Target',
                    type: 'line',
                    step: 'middle',
                    data: dataTarget
                },
                {
                    name: 'BBC',
                    type: 'line',
                    step: 'middle',
                    data: dataBbc
                },
                {
                    name: 'AVG Actual',
                    type: 'line',
                    step: 'end',
                    data: dataAvg
                }
                ]
            });
        }

        //  initialize Leaflet
        var map = L.map('map').setView({
            lon: 106.814095,
            lat: -6.300641
        }, 11);
        // add the OpenStreetMap tiles
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
        }).addTo(map);
        // show the scale bar on the lower left corner
        L.control.scale().addTo(map);
        $(document).ready(function() {
            $('#upload_form').on('submit', function(event) {
                event.preventDefault();
                console.log();
                $.ajax({
                    url:"{!! route('dashboard.action') !!}",
                    method: "POST",
                    data: new FormData(this),
                    dataType: 'JSON',
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function(data) {
                        console.log(data);
                        $('#message').css('display', 'block');
                        $('#message').html(data.message);
                        $('#message').addClass(data.class_name);
                        $('#uploaded_image').html('kml/'+ data.uploaded_file);
                        var tmp = data.uploaded_file;
                        // console.log(tmp);
                        fetch(tmp)  //get the location with the new name of the saved file
                            .then(res => res.text())
                            .then(kmltext => {
                                console.log(tmp);
                                console.log(kmltext)
                                // Create new kml overlay
                                const track = new omnivore.kml.parse(kmltext);
                                console.log(track);
                                map.addLayer(track);    //add a layer with the coordinates in the file
                                // Adjust map to show the kml
                                const bounds = track.getBounds();
                                console.log(bounds);
                                map.fitBounds(bounds);
                            }).catch((e) => {
                                console.log(e);
                            })
                    }
                })
            });
        });

        // const map = new L.Map('map', { center: new L.LatLng(58.4, 43.0), zoom: 11 });
        //     const osm = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png');

        //     map.addLayer(osm);

        //     // Load kml file
        //     fetch('/AAPA.kml')
        //         .then(res => res.text())
        //         .then(kmltext => {
        //         console.log(kmltext)
        //         // Create new kml overlay
        //         const track = new omnivore.kml.parse(kmltext);
        //         console.log(track);
        //         map.addLayer(track);    //add a layer with the coordinates in the file
        //         // Adjust map to show the kml
        //         const bounds = track.getBounds();
        //         console.log(bounds);
        //         map.fitBounds(bounds);
        //     }).catch((e) => {
        //         console.log(e);
        //     })


</script>

@endpush