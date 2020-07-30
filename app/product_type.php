<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product_type extends Model
{
    protected $table = 'product_type';


    public static function getTypeList(){
      $list =  product_type::where('pt_ispublic',1)
      ->orderBy('pt_ind','desc')
      ->get()->toArray();
      foreach($list as $key=>$row){
        
      }
    }
}
