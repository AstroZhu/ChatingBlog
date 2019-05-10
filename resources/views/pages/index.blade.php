@extends('layouts/app')

@section('content')
      <div class="jumbotron text-center" style='background-image:url("/storage/cover_images/coverimg.jpg")'>
        <h1 style='font-family: Impact;'>{{$title}}</h1>
        <p></p>
        <p></p>
        <p><a class="btn btn-primary btn-lg" href="/login" role="buttn">Login</a>
        <a class="btn btn-success btn-lg" href="/register" role="button">Register</a></p>
      </div>

@endsection
