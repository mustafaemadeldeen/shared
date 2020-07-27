@extends('layouts.app')
<html lang="ar">



<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    @section('head')

        <title>vote</title>

    @stop
</head>
<body >
@if(Session::has('flash_message_error'))
    <div class="alert alert-danger alert-block">
        <strong>{!!session('flash_message_error')!!}</strong>
    </div>
@endif
@if(Session::has('flash_message_success'))
    <div class="alert alert-success alert-block">
        <strong>{!!session('flash_message_success')!!}</strong>
    </div>
@endif

    <form method="POST" action="{{route('vote.store')}}" enctype="multipart/form-data">
        @csrf
        <div class="container">
            <div class="col-md-6">

    <div class="form-group">
        <label for="exampleInputEmail1">الإسم</label>
        <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
            </div>
            <div class="col-md-6">
    <div class="form-group">
        <label for="exampleInputPassword1">الإيميل الشخصي </label>
        <input type="email" name="email" class="form-control" id="exampleInputPassword1">
        @error('email')
        <small class="form-text " style="color: red">{{$message}}</small>
        @enderror
    </div>
        </div>
            <div class="col-md-6">
        <div class="rating-box">

            <div class="ratings">
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            </div>
            <input type="hidden" name="avg_percent" id="rating-value">
        </div>
            </div>
            <div class="col-md-6">

            <div class="form-group">
{{--        <label for="exampleInputPassword1">نسبة التصويت </label>--}}
{{--        <input type="number" name="avg_percent" max="5" class="form-control" id="exampleInputPassword1">--}}
        <input type="hidden"  value="{{$sharing_id}}" name="sharing_id">
    </div>
            </div>
            <button type="submit" class="btn btn-primary">التصويت الأن</button>

        </div>



</form>
<div id="social-links">
    <ul>
        <li><a href="https://www.facebook.com/sharer/sharer.php?u=http://localhost:8000/view-photo/2" class="social-button " id=""><span class="fa fa-facebook-official"></span></a></li>
        <li><a href="https://twitter.com/intent/tweet?text=my share text&amp;url=http://jorenvanhocht.be" class="social-button " id=""><span class="fa fa-twitter"></span></a></li>
        <li><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=http://jorenvanhocht.be&amp;title=my share text&amp;summary=dit is de linkedin summary" class="social-button " id=""><span class="fa fa-linkedin"></span></a></li>
        <li><a href="https://wa.me/?text=http://jorenvanhocht.be" class="social-button " id=""><span class="fa fa-whatsapp"></span></a></li>
    </ul>
</div>












<script src="{{asset('js/script.js')}}"></script>
</body>






</html>