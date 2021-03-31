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

  public function odmoem()
  {
    return view('odmoem');
  }

  public function type()
  {
    $type = Type::getTypeList();
    // var_dump($type[1]['subtype'][0]);exit;
    return view('type', ['data' => $type]);
  }

  public function subtype(Request $request)
  {
    $type = Type::getTypeList();
    //  $subtypeId = $request->route('subtypeId');
    //  var_dump($subtypeId);exit;
    return view('subtype', ['data' => $type]);
    //  return view('subtype');
  }
}
