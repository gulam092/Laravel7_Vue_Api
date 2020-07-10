<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use DB;
class ProductsController extends Controller
{
    public function index()
    {
    	$product = DB::table('ptoducts')->paginate(2);
    	return view('product.index',compact('product'));
    }
    public function create()
    {
    	return view('product.create');
    }

    public function store(Request $request)
    {
    	$data  =array();
    	$data['product_name']  =$request->product_name;
    	$data['product_code']  =$request->product_code;
    	$data['details']  =$request->details;
        $image  = $request->file('logo');
        if ($image) {
    	$image_name = date('dmy_H_s_i');
    	$ext   =strtolower($image->getClientOriginalExtension());
    	 $image_full_name = $image_name.'.'.$ext; 
    	 $upload_path  ='public/media/';
    	$image_url   = $upload_path.$image_full_name;
    	$success   = $image->move($upload_path,$image_full_name);
    	$data['logo']  =$image_url; 
    	$product   = DB::table('ptoducts')->insert($data);
    	return redirect()->route('product.index')->with('success','Product Creted Successfully');
        }

    }

    public function edit($proid)
    {
    	$product  = DB::table('ptoducts')->where('id',$proid)
    	                                 ->first();
    	return view('product.edit',compact('product'));
    }

    public function update(Request $request ,$proId)
    {
    	$oldImage  = $request->old_log;
    	$data  =array();
    	$data['product_name']  =$request->product_name;
    	$data['product_code']  =$request->product_code;
    	$data['details']  =$request->details;
        $image  = $request->file('logo');
        if ($image) {
        	unlink($oldImage);
    	$image_name = date('dmy_H_s_i');
    	$ext   =strtolower($image->getClientOriginalExtension());
    	 $image_full_name = $image_name.'.'.$ext; 
    	 $upload_path  ='public/media/';
    	$image_url   = $upload_path.$image_full_name;
    	$success   = $image->move($upload_path,$image_full_name);
    	$data['logo']  =$image_url; 
    	$product   = DB::table('ptoducts')->where('id',$proId)
    	                   ->update($data);
    	return redirect()->route('product.index')->with('success','Product Updated Successfully');
        }

    }

    public function delete($delId)
    {

    	$data  = DB::table('ptoducts')->where('id',$delId)
    	                                  ->first();
    	                                
    	 $image   =$data->logo; 
    	 unlink($image);  
    	 $product = DB::table('ptoducts')->where('id',$delId)
    	                        ->delete();

    	return redirect()->route('product.index')->with('success','Product Deleted Successfully');
    }

    public function show($id)
    {
    	$data  = DB::table('ptoducts')->where('id',$id)
    	                      ->first();
    	 return view('product.show',compact('data'));                     
    	
    }
}
