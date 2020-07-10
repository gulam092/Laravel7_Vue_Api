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
 		<h2>Laravel Product List</h2>
 	</div>
 		<div class="float-right">
 			<a class="btn btn-success" href="{{route('create.product')}}">
 				Create New Product
 			</a>
 		</div>
 	</div>	
</div>
 	@if($message  =Session::get('success'))
     <div class="alert alert-success">
     	<p>{{$message}}</p>
     </div>
 	@endif
 	 <table class="table">
 	 	
 	 	<thead>
 	 		<tr>
 	 			<th width="100px">Sr number</th>
 	 			<th width="150px">Product Name</th>
 	 			<th width="100px">Product code</th>
 	 			<th width="200px">Product Details</th>
 	 			<th width="100px">Product Logo</th>
 	 			<th width="280px">Action</th>


 	 		</tr>
 	 	</thead>
 	 	<tbody>
 	 		@php 
           $sn =1;
 	 		@endphp
 	 		@foreach($product as $pro)
 	 		<tr>
 	 		<td>{{$sn}}</td>
 	 		<td>{{$pro->product_name}}</td>
 			<td>{{$pro->product_code}}</td>
 			<td>{{str_limit($pro->details,$limit =70)}}</td>
 			<td><img src="{{URL::to($pro->logo)}}" height="70px" width="80px;"></td>
 			

 			<td>
 				<a href="{{URL::to('show/product/'.$pro->id)}}" class="btn btn-info">show</a>

 				<a href="{{URL::to('edit/product/'.$pro->id)}}" class="btn btn-success">Edit</a>
 				<a href="{{URL::to('delete/product/'.$pro->id)}}"
 				onclick="return confirm('Are You want To sure to be deleted?')" class="btn btn-danger">Delete</a>

 	 			</td>

 	 		</tr>
 	 		@php 
            $sn++;
 	 		@endphp
 	 		@endforeach
 	 	</tbody>
 	 </table>
 		{!!$product->links()!!}
 	
@endsection