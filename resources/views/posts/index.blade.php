@extends('layouts.app')

@section('content')
  <h1>Posts</h1>
  <div class="input-group" style='width:100%;height:100%;'>
  {!!Form::open(['action'=>['PostsController@order'],'method'=>'POST','enctype'=>'multipart/form-data','class'=>'float-left'])!!}
     {!!Form::select('order', array('orderbytitle' => 'Order by Title', 'orderbytime' => 'Order by Time'),(isset($order) ? $order : 'orderbytime'))!!}
     {{Form::submit('Order',['class' => 'btn btn-primary'])}}
  {!!Form::close()!!}

  {!!Form::open(['action'=>['PostsController@order'],'method'=>'POST','enctype'=>'multipart/form-data','class'=>'float-right'])!!}
     {!!Form::text('username',(isset($search) ? $search : ''))!!}
     {{Form::submit('Search',['class' => 'btn btn-primary'])}}
  {!!Form::close()!!}
  </div>
  @if(count($posts) > 0)
    @foreach($posts as $post)
      <div class="card card-body bg-light">
         <div class="row">
           <div class="col-md-4 col-sm-4">
             <img width="254" height="150" src="/storage/cover_images/{{$post->cover_image}}">
           </div>
           <div class="col-md-8 col-sm-8">
             <h3><a href='/posts/{{$post->id}}'>{{$post->title}}</a></h3>
             <small>Written on{{$post->created_at}} by {{$post->user->name}}</small>
           </div>
         </div>
      </div>
    @endforeach
    {{$posts->links()}}
  @else
    <p>No posts found</p>
  @endif
@endsection
