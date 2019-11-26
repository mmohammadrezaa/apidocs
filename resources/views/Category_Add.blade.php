@extends('masterpage')
@section('content')
    <?php
    if (@$cat != '' || @$cat['icon'] != 'NULL'){
        $id = @$cat['id'];
    }else{
        $id = 'n';
    }
    ?>
    <style>
        .preview{
            width: 100px;
            height: 100px;
            border: 1px solid black;
            margin: 0 auto;
            background: white;
        }

        .preview img{
            display: none;
        }
    </style>
    <script>

        function add_new_bx() {
            input_count = 0;
            input_count = $(".conter").length;
            $('#show_bx').append('<div class="row conter" id="bx_' + input_count + '"><div class="col-md-3"><input class="form-control" type="text" name="bx[' + input_count + '][name]" placeholder="field name" /></div>' +
                '<div class="col-md-3"><input class="form-control" type="text" name="bx['+input_count+'][type]" placeholder="field type" /></div>' +
                '<div class="col-md-3"><input class="form-control" type="text" name="bx['+input_count+'][value]" placeholder="field value" /></div>' +
                '<div class="col-md-2"><input class="btn btn-danger" type="button" onclick="delete_bx(\'' + input_count + '\')" value="حذف" /></div></div>');
        }
        function add_new_fild(id) {
            var input_count = $("#show_bx div[id^=fild_"+id+"]").length;
            $('#bx_'+id).after('<div class="row" id="fild_'+ id +'_'+ input_count +'" ><div class="col-md-1"></div><div class="col-md-4"><input class="form-control" type="text" name="bx[' + id + '][key][]" id="bx1_' + id + '" placeholder="نوع مشخصات"/></div><div class="col-md-6"><input class="form-control" type="text" name="bx[' + id + '][value][]" id="bx2_' + id + '" placeholder="داده نوع وادر شده " /></div><div class="col-md-1"><input class="btn btn-danger" type="button" onclick="delete_fild(\'fild_' + id + '_' + input_count + '\')" value="حذف" /></div></div>');
        }
        function delete_bx(id) {
            $('#bx_'+id).remove();
            $('#show_bx div[id^=fild_'+id+']').remove();
        }
        function delete_fild(name) {
            $('#show_bx #'+name).remove();
        }

    </script>
    <div class="row">
        <div class="col-xs-12">
            <div class="content-header-left col-md-6 col-xs-12 mb-1">
                <h4>افزودن doc</h4>
            </div>
            <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('Dashboard') }}">داشبورد</a>
                    </li>
                    <li class="breadcrumb-item"><a href="{{ url('Add') }}">افزودن doc</a>
                    </li>
                    <li class="breadcrumb-item active">افزودنdoc
                    </li>
                </ol>
            </div>
        </div>
        <div id="danger_close">
            <a data-action="close" onclick="closebx()"><i class="fa fa-close"></i></a>
            @if(count($errors) > 0)
                <ul id="ul" class="close_box">

                    @foreach($errors->all() as $e)
                        <li class="alert alert-danger">{{ $e }}</li>
                    @endforeach
                </ul>
            @endif
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">افزودنdoc</h4>
                    <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                            <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body collapse in">
                    <div class="card-block">
                        <form class="" action="@if(@$Edit != '') {{ url('Edited/' . @$Edit['id']) }} @else {{ url('Add') }} @endif" method="post">
                        @csrf

                        <div class="form-body">
                            <div class="row">


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="projectinput1">method</label>
                                        <select class="form-control" name="type">
                                            <option value="0" @if(@$Edit['type'] == 0) selected @endif>get</option>
                                            <option value="1" @if(@$Edit['type'] == 1) selected @endif>post</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label for="projectinput1">link</label>
                                        <input type="text" id="projectinput1" class="form-control" placeholder="link" name="link" value="@if(old('link')){{ old('link') }}@else{{ @$Edit['link'] }}@endif">
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="projectinput6">description</label>
                                <textarea class="form-control" name="description">
                                        {{ @$Edit['description'] }}
                                    </textarea>
                            </div>
                            <div class="form-group">
                                <label for="projectinput6">example</label>
                                <textarea class="form-control" name="example">
                                        {{ @$Edit['example'] }}
                                    </textarea>
                            </div>


                                <div class="white-box">
                                    <h3 class="box-title m-b-0">fields</h3>
                                    <p class="text-muted m-b-10">مشخصات محصول را تولید کنید </p>
                                    <div class="form-group" id="show_bx">
                                        <?php
                                        if(@$Edit['spec'] != 'null' && @$Edit['spec'] != '' ){
                                            $spec = json_decode(@$Edit['spec'],true);
                                            $count_filde = 0;
                                            foreach(@$spec as $s){
                                                echo '<div class="row" id="bx_'. $count_filde .'"><div class="col-md-3"><input class="form-control" type="text" name="bx[][name]" placeholder="field name" value="'. @$s['name'] .'" /></div><div class="col-md-3"><input class="form-control" type="text" name="bx[][type]" placeholder="field type" value="'. @$s['type'] .'" /></div><div class="col-md-3"><input class="form-control" type="text" name="bx[][value]" placeholder="field value" value="'. @$s['value'] .'" /></div><div class="col-md-2"><input class="btn btn-danger" type="button" onclick="delete_bx(\''. $count_filde .'\')" value="حذف" /></div></div>';
                                                $count_filde++;
                                            }
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <button type="button" class="btn btn-warning" style="width: 100%;" onclick="add_new_bx()">افزودن باکس مشخصات</button>
                                    </div>

                                </div>
                            </div>


                        <div class="form-actions">
                            <button type="submit" class="btn @if(@$Edit != '')btn-outline-primary   @else btn-outline-success @endif">
                                <i class="icon-check2"></i> @if(@$Edit != '')ویرایش   @else افزودن @endif
                            </button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>
    input_count = {{ @$count_filde }};
</script>
@endsection
