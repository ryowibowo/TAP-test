@extends('layouts.default')

@section('title', '404 Page')

@section('content')
    <div class="text-center mb-5">
        <img src="{{ asset('assets/img/error.svg') }}" style="max-height: 100px;" class="mb-3">
        <h3 class="text-gray-800 font-weight-bold">Oopss!</h3>
        <p class="lead text-gray-800 mx-auto">404 Page Not Found</p>
        <a href="{{ route('index') }}">&larr; Back to Dashboard</a>
    </div>
@endsection