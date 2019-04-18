@extends('frontEnd.layouts.master')
@section('title','Home Page')
@section('content')
    <section>
<div class="w3-content w3-display-container">
  <img class="mySlides" src="{{asset('frontEnd/images/home/3.jpg')}}" style="width:100%">
  <img class="mySlides" src="{{asset('frontEnd/images/home/1.jpg')}}" style="width:100%">
  <img class="mySlides" src="{{asset('frontEnd/images/home/2.png')}}" style="width:100%">
  <img class="mySlides" src="{{asset('frontEnd/images/home/4.jpg')}}" style="width:100%">
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000); 
}
</script>
<br>
<br>

<div class="container">
            <div class="row">
                <div class="col-sm-3">
                    @include('frontEnd.layouts.category_menu')
                </div>
                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Features Items</h2>
                        @foreach($products as $product)
                            @if($product->category->status==1)
                                <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <a href="{{url('/product-detail',$product->id)}}"><img src="{{url('products/small/',$product->image)}}" alt="" /></a>
                                        <h2>₹ {{$product->price}}</h2>
                                        <p>{{$product->p_name}}</p>
                                        <a href="{{url('/product-detail',$product->id)}}" class="btn btn-default add-to-cart">View Product</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                            @endif
                        @endforeach
                    </div><!--features_items-->

                </div>
            </div>
        </div>
        
    </section>
@endsection