<?php

namespace App\Http\Controllers;

use App\Type;
use Illuminate\Http\Request;
use View;

class Page extends Controller
{
  public function index()
  {
    return view('index');
  }

  public function odmoem(){
    return view('odmoem');
  }

  public function products(){
    // Type::test();
    $product = Type::getTypeList();
    return view('product',['data'=>$product]);
  }


}
