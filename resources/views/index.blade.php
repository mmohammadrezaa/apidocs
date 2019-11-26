<!DOCTYPE html>
<html>
<head>
    <title>documention</title>
    <link type="text/css" rel="stylesheet" href="{{ url('assets/css/style.css') }}">
    <link type="text/css" rel="stylesheet" href="{{ url('assets/css/bootstrap.min.css') }}">

    <head>
<body>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8 center">
        @foreach($Content as $c)
        <div class="head-content">
            <div class="method">
                @if($c['type'] == 0) {{ "GET" }} @else {{ "POST" }} @endif
            </div>
            <span class="link">link: {{ $c['link'] }}</span>
        </div>
        <div class="body">
            <div class="description">{{ $c['description'] }}</div>
            <div class="example">
                <button id="btn" class="btn btn-success" onclick="mrtog({{ $c['id'] }})">SHOW Example</button>
                        <code id="code_{{$c['id']}}" class="code" style="display: none">{{ $c['example'] }}</code>
                <button id="btn" class="btn btn-success" onclick="mrfil({{ $c['id'] }})">SHOW Fields</button>

            </div>
            <div id="table_{{$c['id']}}" style="display: none;">
            @if(@$c['spec'] != 'null' && @$c['spec'] != '' )
                <div class="table-responsive">
                    <table  class="table">
                        <thead>
                        <tr>
                        <th>#</th>
                        <th>name</th>
                        <th>type</th>
                        <th>default value</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $spec = json_decode(@$c['spec'],true);
                        $number_fields = 1;
                        ?>
                        @foreach($spec as $s)
                            <tr>
                                <td>{{ $number_fields }}</td>
                                <td>{{ $s['name'] }}</td>
                                <td>{{ $s['type'] }}</td>
                                <td>{{ $s['value'] }}</td>
                            </tr>
                            <?php $number_fields++; ?>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <span class="bg-danger">وجود ندارد</span>
                     @endif
            </div>
        </div>
            @endforeach
    </div>
    <div class="col-md-2"></div>
</div>
<script src="{{ url('assets/js/behavior.js') }}"></script>
<script src="{{ url('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ url('assets/js/jquery-1.11.1.min.js') }}"></script>
</body>
</html>