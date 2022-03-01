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
                                <h4 class="mb-0">{{ __('108')}}</h4>
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
            <div class="row align-left">
                <div class="col-xl-12">
                <div class="card-header">
                    <div class="page-header-title">
                    <h5>{{ __('Notifications')}}</h5>
                    <span>{{ __('Notifications related to all schools are available here.')}}</span>
                    </div>
                </div>
            </div>
                <div class="col-xl-4">
                    <div class="card task-board">
                        <div class="card-header">
                            <h3>{{ __('School of Architecture')}}</h3>
                            <div class="card-header-right">
                                <ul class="list-unstyled card-option">
                                    <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                    <li><i class="ik ik-rotate-cw reload-card" data-loading-effect="pulse"></i></li>
                                    <li><i class="ik ik-minus minimize-card"></i></li>
                                    <li><i class="ik ik-x close-card"></i></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body todo-task">
                            <div class="dd" data-plugin="nestable">
                                <ol class="dd-list">
                                    <li class="dd-item" data-id="1">
                                        <div class="dd-handle">
                                            <h6>{{ __('Dashbaord')}}</h6>
                                            <p>{{ __('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')}}</p>
                                        </div>
                                    </li>
                                    <li class="dd-item" data-id="2">
                                        <div class="dd-handle">
                                            <h6>{{ __('New project')}}</h6>
                                            <p>{{ __('It is a long established fact that a reader will be distracted.')}}</p>
                                        </div>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>School of Engineering</h3>
                            <div class="card-header-right">
                                <ul class="list-unstyled card-option">
                                    <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                    <li><i class="ik ik-rotate-cw reload-card" data-loading-effect="pulse"></i></li>
                                    <li><i class="ik ik-minus minimize-card"></i></li>
                                    <li><i class="ik ik-x close-card"></i></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body progress-task">
                            <div class="dd" data-plugin="nestable">
                                <ol class="dd-list">
                                    <li class="dd-item" data-id="1">
                                        <div class="dd-handle">
                                            <h6>{{ __('New Code Update')}}</h6>
                                            <p>{{ __('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')}}</p>
                                        </div>
                                    </li>
                                    <li class="dd-item" data-id="2">
                                        <div class="dd-handle">
                                            <h6>{{ __('Meeting')}}</h6>
                                            <p>{{ __('The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero')}}</p>
                                        </div>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>School of Pharmacy</h3>
                            <div class="card-header-right">
                                <ul class="list-unstyled card-option">
                                    <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                    <li><i class="ik ik-rotate-cw reload-card" data-loading-effect="pulse"></i></li>
                                    <li><i class="ik ik-minus minimize-card"></i></li>
                                    <li><i class="ik ik-x close-card"></i></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body completed-task">
                            <div class="dd" data-plugin="nestable">
                                <ol class="dd-list">
                                    <li class="dd-item" data-id="1">
                                        <div class="dd-handle">
                                            <h6>{{ __('Job title')}}</h6>
                                            <p>{{ __("If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.")}}</p>
                                        </div>
                                    </li>
                                    <li class="dd-item" data-id="2">
                                        <div class="dd-handle">
                                            <h6>{{ __('Event Done')}}</h6>
                                            <p>{{ __('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical')}}</p>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-lg-11">
                    <div class="card">
                        <div class="card-header">
                            <h3>{{ __('Students Placed')}}</h3>
                        </div>
                        <div class="card-block text-center">
                            <div id="bar_chart" class="chart-shadow"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                <div class="card-header">
                    <div class="page-header-title">
                    <h5>{{ __('Calender')}}</h5>
                    <span>{{ __('You can add/view schedules here.')}}</span>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div id="calendar"></div>
                        </div>
                    </div>
                </div>
            <div class="modal" id="editEvent" tabindex="-1" role="dialog" aria-labelledby="editEventLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <form class="editEventForm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editEventLabel">{{ __('Edit Event')}}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="editEname">{{ __('Event Title')}}</label>
                                    <input type="text" class="form-control" id="editEname" name="editEname" placeholder="Please enter event title">
                                </div>
                                <div class="form-group">
                                    <label for="editStarts">{{ __('Start')}}</label>
                                    <input type="text" class="form-control datetimepicker-input" id="editStarts" name="editStarts" data-toggle="datetimepicker" data-target="#editStarts">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close')}}</button>
                                <button class="btn btn-danger delete-event" type="submit">{{ __('Delete')}}</button>
                                <button class="btn btn-success save-event" type="submit">{{ __('Save')}}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="modal" id="addEvent" tabindex="-1" role="dialog" aria-labelledby="addEventLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addEventLabel">{{ __('Add New Event')}}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <form id="addEventForm">
                                <div class="form-group">
                                    <label for="eventName">{{ __('Event Title')}}</label>
                                    <input type="text" class="form-control" id="eventName" name="eventName" placeholder="Please enter event title">
                                </div>
                                <div class="form-group">
                                    <label for="eventStarts">{{ __('Starts')}}</label>
                                    <input type="text" class="form-control datetimepicker-input" id="eventStarts" name="eventStarts" data-toggle="datetimepicker" data-target="#eventStarts">
                                </div>
                                <div class="form-group mb-0" id="addColor">
                                    <label for="colors">{{ __('Choose Color')}}</label>
                                    <ul class="color-selector">
                                        <li class="bg-aqua">
                                            <input type="radio" data-color="bg-aqua" checked name="colorChosen" id="addColorAqua">
                                            <label for="addColorAqua"></label>
                                        </li>
                                        <li class="bg-blue">
                                            <input type="radio" data-color="bg-blue" name="colorChosen" id="addColorBlue">
                                            <label for="addColorBlue"></label>
                                        </li>
                                        <li class="bg-light-blue">
                                            <input type="radio" data-color="bg-light-blue" name="colorChosen" id="addColorLightblue">
                                            <label for="addColorLightblue"></label>
                                        </li>
                                        <li class="bg-teal">
                                            <input type="radio" data-color="bg-teal" name="colorChosen" id="addColorTeal">
                                            <label for="addColorTeal"></label>
                                        </li>
                                        <li class="bg-yellow">
                                            <input type="radio" data-color="bg-yellow" name="colorChosen" id="addColorYellow">
                                            <label for="addColorYellow"></label>
                                        </li>
                                        <li class="bg-orange">
                                            <input type="radio" data-color="bg-orange" name="colorChosen" id="addColorOrange">
                                            <label for="addColorOrange"></label>
                                        </li>
                                        <li class="bg-green">
                                            <input type="radio" data-color="bg-green" name="colorChosen" id="addColorGreen">
                                            <label for="addColorGreen"></label>
                                        </li>
                                        <li class="bg-lime">
                                            <input type="radio" data-color="bg-lime" name="colorChosen" id="addColorLime">
                                            <label for="addColorLime"></label>
                                        </li>
                                        <li class="bg-red">
                                            <input type="radio" data-color="bg-red" name="colorChosen" id="addColorRed">
                                            <label for="addColorRed"></label>
                                        </li>
                                        <li class="bg-purple">
                                            <input type="radio" data-color="bg-purple" name="colorChosen" id="addColorPurple">
                                            <label for="addColorPurple"></label>
                                        </li>
                                        <li class="bg-fuchsia">
                                            <input type="radio" data-color="bg-fuchsia" name="colorChosen" id="addColorFuchsia">
                                            <label for="addColorFuchsia"></label>
                                        </li>
                                        <li class="bg-muted">
                                            <input type="radio" data-color="bg-muted" name="colorChosen" id="addColorMuted">
                                            <label for="addColorMuted"></label>
                                        </li>
                                        <li class="bg-navy">
                                            <input type="radio" data-color="bg-navy" name="colorChosen" id="addColorNavy">
                                            <label for="addColorNavy"></label>
                                        </li>
                                    </ul>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close')}}</button>
                            <button type="button" class="btn btn-success save-event">{{ __('Save')}}</button>
                            <button type="button" class="btn btn-danger delete-event" data-dismiss="modal">{{ __('Delete')}}</button>
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
    <script src="{{ asset('plugins/flot-charts/jquery.flot.tooltip.min.js') }}"></script>

    <script src="{{ asset('plugins/amcharts/amcharts.js') }}"></script>
    <script src="{{ asset('plugins/amcharts/serial.js') }}"></script>
    <script src="{{ asset('plugins/amcharts/themes/light.js') }}"></script>
    <script src="{{ asset('plugins/amcharts/amcharts.js') }}"></script>
    <script src="{{ asset('plugins/amcharts/pie.js') }}"></script>
    <script src="{{ asset('js/chart-amcharts.js') }}"></script>


    <script src="{{ asset('js/widget-statistic.js') }}"></script>
    <script src="{{ asset('js/widget-data.js') }}"></script>
    <script src="{{ asset('js/dashboard-charts.js') }}"></script>

    <script src="{{ asset('plugins/moment/moment.js') }}"></script>
    <script src="{{ asset('plugins/fullcalendar/dist/fullcalendar.min.js') }}"></script>
    <script src="{{ asset('plugins/tempusdominus-bootstrap-4/build/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <script src="{{ asset('js/calendar.js') }}"></script>

@endpush

@endsection
