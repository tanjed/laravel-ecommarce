<?php

namespace App\Http\Controllers;

use App\Products_model;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function execute(Request $request)
    {
        $products = Products_model::where('p_name','like','%'.$request->get('query').'%')->get();
        //dd($products);
        return view('frontEnd.search',compact('products'));
    }
}
