@extends('layouts.default')

@section('content')
    @if (eKreative::isView())
        asdasdasd
    @else
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="alert alert-danger" role="alert">
                        You don`t have privileges to access this area!
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection
