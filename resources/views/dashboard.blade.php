@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body" style='background-image:url("/storage/cover_images/coverimg.jpg")'>
                    <a href="/posts/create" class='btn btn-primary'>Create Post</a>
                    <h3>Your Blog Posts</h3>
                    @if(count($posts)>0)
                    <table class="table table-dark">
                       <tr>
                         <th>Title</th>
                         <th></th>
                         <th></th>
                       </tr>
                       @foreach($posts as $post)
                            <tr>
                              <td>{{$post->title}}</td>
                              <td><a href="/posts/{{$post->id}}/edit" class="btn btn-success">Edit</td>
                              <td>
                                {!!Form::open(['action'=>['PostsController@destroy',$post->id],'method'=>'POST','class'=>'float-right'])!!}
                                   {{Form::hidden('_method','DELETE')}}
                                   {{Form::submit('DELETE',['class' => 'btn btn-danger'])}}
                                {!!Form::close()!!}
                              </td>
                            </tr>
                       @endforeach
                    </table>
                    @else
                      <p>You have no posts</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
