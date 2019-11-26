@extends('masterpage')
@section('content')
    <div class="row">
        <div class="col-xs-12">
            <div class="content-header-left col-md-6 col-xs-12 mb-1">
                <h4>لیست دسته بندی</h4>
            </div>
            <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('Dashboard') }}">داشبورد</a>
                    </li>
                    <li class="breadcrumb-item active">لیست دسته بندی
                    </li>
                </ol>
            </div>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">لیست doc</h4>
                    <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            @if(@$f != '')
                                <li><a href="{{ url('List') }}"><i class="icon-reply4" style="color: red"></i></a></li>
                            @endif
                            <li><a href="{{ url('Add') }}"><i class="icon-android-add-circle"></i></a></li>
                            <li><a data-toggle="modal" data-target="#filter"><i class="icon-filter"></i></a></li>
                            <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                            <li><a data-action="expand"><i class="icon-expand2"></i></a></li>

                        </ul>
                    </div>
                </div>
                <div class="card-body collapse in">

                    <div class="table-responsive">
                        <table class="table">
                            <thead class="thead-inverse">
                            <tr>
                                <th>#</th>
                                <th>link</th>
                                <th>type</th>
                                <th>عملیات</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $num = 1; ?>
                            @foreach($Content as $C)

                                <tr>
                                    <th scope="row">{{ $num }}</th>

                                    <td> {{ $C['link'] }} </td>
                                    <td>@if($C['type'] == 1)  <span class="btn-success btn-sm">post</span> @else  <span class="btn-warning btn-sm">get</span> @endif</td>
                                    <td>
                                        <a href="{{ url('Edited/'.$C['id']) }}">
                                            <button type="button" class="btn btn-outline-primary btn-sm">edit</button>
                                        </a>
                                        <a href="{{ url('Deleted/'.$C['id']) }}">
                                            <button type="button" class="btn btn-outline-danger btn-sm">delete</button>
                                        </a>

                                    </td>
                                </tr>
                                <?php $num++; ?>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
        </div>
    </div>
    </div>

@endsection