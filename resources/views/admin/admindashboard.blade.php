@extends('layouts.main')
@section('title', 'Dashboard')
@section('content')
    <!-- push external head elements to head -->
    @push('head')
        <link rel="stylesheet" href="{{ asset('plugins/weather-icons/css/weather-icons.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugins/owl.carousel/dist/assets/owl.carousel.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugins/owl.carousel/dist/assets/owl.theme.default.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugins/chartist/dist/chartist.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugins/fullcalendar/dist/fullcalendar.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugins/tempusdominus-bootstrap-4/build/css/tempusdominus-bootstrap-4.min.css') }}">
    @endpush
    <div class="container-fluid">
        <div class="row">
    		<!-- page statustic chart start -->
            <div class="col-xl-3 col-md-6">
                <div class="card card-red text-white">
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="mb-0">{{ __('58')}}</h4>
                                <p class="mb-0">{{ __('Professors in Architecture')}}</p>
                            </div>
                            <div class="col-4 text-right">
                                <i class="ik ik-user f-30"></i>
                            </div>
                        </div>
                        <div id="Widget-line-chart1" class="chart-line chart-shadow"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card card-blue text-white">
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="mb-0">{{ __('10')}}</h4>
                                <p class="mb-0">{{ __('Professors in Engineering')}}</p>
                            </div>
                            <div class="col-4 text-right">
                                <i class="ik ik-user f-30"></i>
                            </div>
                        </div>
                        <div id="Widget-line-chart2" class="chart-line chart-shadow" ></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card card-green text-white">
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="mb-0">{{ __('52')}}</h4>
                                <p class="mb-0">{{ __('Professors in Pharmacy')}}</p>
                            </div>
                            <div class="col-4 text-right">
                                <i class="ik ik-user f-30"></i>
                            </div>
                        </div>
                        <div id="Widget-line-chart3" class="chart-line chart-shadow"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card card-yellow text-white">
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="mb-0">{{ __('126')}}</h4>
                                <p class="mb-0">{{ __('Non Teaching Staffs')}}</p>
                            </div>
                            <div class="col-4 text-right">
                                <i class="ik ik-user f-30"></i>
                            </div>
                        </div>
                        <div id="Widget-line-chart4" class="chart-line chart-shadow" ></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card ticket-card">
                    <div class="card-body">
                        <p class="mb-30 bg-green lbl-card"><i class="fas fa-users"></i> Consessions Approved</p>
                        <div class="text-center">
                            <h2 class="mb-0 d-inline-block text-green">102</h2>
                            <p class="mb-0 d-inline-block">Consessions</p>
                            <p class="mb-0 mt-15"><i class="fas fa-caret-up mr-10 f-18 text-green"></i>From Previous Month</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <div id="datepickerwidget"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card table-card">
                    <div class="card-header">
                        <h3>{{ __('Department Details')}}</h3>
                        <div class="card-header-right">
                            <ul class="list-unstyled card-option">
                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                <li><i class="ik ik-minus minimize-card"></i></li>
                                <li><i class="ik ik-x close-card"></i></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-block p-b-0">
                        <div class="table-responsive">
                            <table class="table table-hover table-borderless mb-0">
                                <thead>
                                    <tr>
                                        <th>{{ __('Department')}}</th>
                                        <th>{{ __('Students')}}</th>
                                        <th>{{ __('Change')}}</th>
                                        <th>{{ __('Avg SGPI')}}</th>
                                        <th>{{ __('Total')}}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="d-inline-block align-middle">
                                                <h6>Computer Engineering</h6>
                                                <p class="text-muted mb-0">1st year to 4th year</p>
                                            </div>
                                        </td>
                                        <td>356</td>
                                        <td>
                                            <div id="app-sale1" ></div>
                                        </td>
                                        <td>8.26</td>
                                        <td class="text-blue">15,652</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="d-inline-block align-middle">
                                                <h6>Mechanical Engineering</h6>
                                                <p class="text-muted mb-0">1st year to 4th year</p>
                                            </div>
                                        </td>
                                        <td>452</td>
                                        <td>
                                            <div id="app-sale2" ></div>
                                        </td>
                                        <td>7.62</td>
                                        <td class="text-blue">18,785</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="d-inline-block align-middle">
                                                <h6>Civil Engineering</h6>
                                                <p class="text-muted mb-0">1st year to 4th year</p>
                                            </div>
                                        </td>
                                        <td>265</td>
                                        <td>
                                            <div id="app-sale3" ></div>
                                        </td>
                                        <td>7.3</td>
                                        <td class="text-blue">9,652</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="d-inline-block align-middle">
                                                <h6>Electrical Engineering</h6>
                                                <p class="text-muted mb-0">1st year to 4th year</p>
                                            </div>
                                        </td>
                                        <td>158</td>
                                        <td>
                                            <div id="app-sale4" ></div>
                                        </td>
                                        <td>6.94</td>
                                        <td class="text-blue">7,856</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    @push('script')

    <script src="{{ asset('plugins/owl.carousel/dist/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('plugins/chartist/dist/chartist.min.js') }}"></script>
    <script src="{{ asset('plugins/flot-charts/jquery.flot.js') }}"></script>
    <script src="{{ asset('plugins/flot-charts/curvedLines.js') }}"></script>

    <script src="{{ asset('js/widget-statistic.js') }}"></script>
    <script src="{{ asset('js/widget-data.js') }}"></script>
    <script src="{{ asset('js/dashboard-charts.js') }}"></script>
    <script src="{{ asset('js/widgets.js') }}"></script>
    <script src="{{ asset('plugins/moment/moment.js') }}"></script>
    <script src="{{ asset('plugins/tempusdominus-bootstrap-4/build/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <script src="{{ asset('plugins/jvectormap/jquery-jvectormap.min.js') }}"></script>
    <script src="{{ asset('plugins/jvectormap/jquery-jvectormap-world-mill-en.js') }}"></script>


@endpush

@endsection
