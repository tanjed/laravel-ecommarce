<?php

namespace App\Http\Controllers;

use App\Category_model;
use App\ImageGallery_model;
use App\ProductAtrr_model;
use App\Products_model;
use App\ProductViews;
use App\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    public function index(){
        $recommended_products = ProductViews::with('products')
            ->withCount(['reviews as avg_reviews' => function ($query) {
                return $query->select(DB::raw('avg(ratting)'));
            }])
            ->orderBy('hit', 'desc')
            ->orderBy('avg_reviews', 'desc')
            ->limit(6)
            ->get();

        $products=Products_model::all();
        return view('frontEnd.index',compact('products','recommended_products'));
    }
    public function shop(){
        $products=Products_model::all();
        $byCate="";
        return view('frontEnd.products',compact('products','byCate'));
    }
    public function listByCat($id){
        $list_product=Products_model::where('categories_id',$id)->get();
        $byCate=Category_model::select('name')->where('id',$id)->first();
        return view('frontEnd.products',compact('list_product','byCate'));
    }
    public function detialpro($id){
        $detail_product=Products_model::findOrFail($id);
        $imagesGalleries=ImageGallery_model::where('products_id',$id)->get();
        $totalStock=ProductAtrr_model::where('products_id',$id)->sum('stock');
        $relateProducts=Products_model::where([['id','!=',$id],['categories_id',$detail_product->categories_id]])->get();
        $avg_ratting = Review::where('product_id',$id)->avg('ratting');


        $views = ProductViews::where('product_id',$id)->first();
        if (count((array)$views) == 0){
            ProductViews::create(['product_id'=>$id, 'hit'=>1]);
        }else{
            $views->update(['hit' => ($views->hit+1)]);
        }

        $recommanded_products = ProductViews::with('products')->orderBy('hit','desc')->take(3)->get()->toArray();
        return view('frontEnd.product_details',compact('detail_product','imagesGalleries','totalStock','relateProducts','recommanded_products','avg_ratting'));
    }
    public function getAttrs(Request $request){
        $all_attrs=$request->all();
        //print_r($all_attrs);die();
        $attr=explode('-',$all_attrs['size']);
        //echo $attr[0].' <=> '. $attr[1];
        $result_select=ProductAtrr_model::where(['products_id'=>$attr[0],'size'=>$attr[1]])->first();
        echo $result_select->price."#".$result_select->stock;
    }
}
