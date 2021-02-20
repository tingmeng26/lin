<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Request;

class Subtype extends Model
{
    protected $table = 'product_stype';
    protected $primaryKey ='ps_id';
    public $timestamps = false;

    public function type(){
      return $this->belongsTo('App\Type', 'pt_id', 'pt_id');
    }

    public function product(){
      return $this->hasMany('App\Product','ps_id','ps_id');
    }

    public static function list(){

     
      // return self::where('ps_ispublic', '1')->paginate(null, ['ps_id as id', 'ps_name_tw as text']);
       $list = Subtype::get()->toArray();
       $result  = [];
       foreach($list as $row){
         $result[$row['ps_id']]=$row['ps_name_tw'];
       }
       return $result;
       
    }


   
}
