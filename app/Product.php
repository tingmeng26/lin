<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $primaryKey ='product_id';

    public function subtype(){
        return $this->hasOne('App\Subtype','ps_id','ps_id');
    }

    public function type(){
        return $this->hasOne('App\Type','pt_id','pt_id');
    }
}
