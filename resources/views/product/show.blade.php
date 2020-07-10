@extends('product.layout')

@section('content')
<style type="text/css" media="screen">
 .float-right{
 	float:right!important;
 }	
 </style>
<div class="row">
 	<div class="col-lg-12">
 	<div class="float-left">
 		<h2>Show Product </h2>
 	</div>
 		<div class="float-right">
 			<a class="btn btn-success" href="{{route('product.index')}}">
 				back 
 			</a>
 		</div>
 	</div>	
 </div>
<div class="row">
	<div class="xs-12 col-md-12 col-sm-12">
		<div class="form-group">
			<strong>Product Name:</strong>
			{{$data->product_name}}
		</div>
	</div>
	<div class="xs-12 col-md-12 col-sm-12">
		<div class="form-group">
			<strong>Product Code:</strong>
			{{$data->product_code}}
		</div>
	</div>
	<div class="xs-12 col-md-12 col-sm-12">
		<div class="form-group">
			<strong>Product Details:</strong>
			{{$data->details}}
		</div>
	</div>
	<div class="xs-12 col-md-12 col-sm-12">
		<div class="form-group">
			<strong>Product Image:</strong>
			<img src="{{URL::to($data->logo)}}" height="120px" width="100px;">
		</div>
	</div>
</div>

@endsection('content')