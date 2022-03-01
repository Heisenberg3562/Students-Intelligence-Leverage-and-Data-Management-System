@extends('layouts.main')
@section('title', 'Attendance')
@section('content')
    <!-- push external head elements to head -->
    @push('head')
        <link rel="stylesheet" href="{{ asset('plugins/DataTables/datatables.min.css') }}">
        <link rel="stylesheet" href="{{ asset('plugins/select2/dist/css/select2.min.css') }}">
    @endpush


    <div class="container-fluid">
    	<div class="page-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <div class="page-header-title">
                        <i class="ik ik-unlock bg-blue"></i>
                        <div class="d-inline">
                            <h5>{{ __('Attendance')}}</h5>
                            <span>{{ __('Attendance area')}}</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <nav class="breadcrumb-container" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="../index.html"><i class="ik ik-home"></i></a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">{{ __('Attendance')}}</a>
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <!-- start message area-->
            @include('include.message')
            <!-- end message area-->
            <!-- only those have manage_permission permission will get access -->
            @can('manage_attendance')
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"><h3>{{ __('Add Attendance')}}</h3></div>
                    <div class="card-body">
                        <form class="forms-sample" method="POST" action="{{url('attendance/create')}}">
                            @csrf
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="lecture_id">{{ __('Lecture Id')}}<span class="text-red">*</span></label>
                                        <input type="text" class="form-control" id="lecture_id" name="lecture_id" placeholder="Lecture ID" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_id">{{ __('User Id')}}<span class="text-red">*</span></label>
                                        <input type="text" class="form-control" id="user_id" name="user_id" placeholder="User ID" required>
                                    </div>
                                </div>
{{--                                <div class="col-sm-6">--}}
{{--                                    <div class="form-group">--}}
{{--                                        <label for="exampleInputEmail3">{{ __('Assigned to Role')}} </label>--}}
{{--                                        {!! Form::select('roles[]', $roles, null,[ 'class'=>'form-control select2', 'multiple' => 'multiple']) !!}--}}
{{--                                    </div>--}}
{{--                                </div>--}}
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-rounded">{{ __('Save')}}</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            @endcan
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card p-3">
                    <div class="card-body">
                        <table id="attendance_table" class="table">
                            <thead>
                                <tr>
                                    <th>{{ __('Lecture Id')}}</th>
                                    <th>{{ __('User Id')}}</th>
                                    <th>{{ __('Action')}}</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- push external js -->
    @push('script')
    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}"></script>
    <script src="{{ asset('plugins/DataTables/datatables.min.js') }}"></script>
    <script src="{{ asset('plugins/DataTables/Cell-edit/dataTables.cellEdit.js') }}"></script>
    <!--server side permission table script-->
    <script src="{{ asset('js/stream.js') }}"></script>
    @endpush
@endsection