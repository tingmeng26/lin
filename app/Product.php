<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
  protected $table = 'products';
  protected $primaryKey = 'product_id';
  const CREATED_AT = 'product_create_time';
  const UPDATED_AT = 'product_update_time';

  protected $fillable = [
    '*'
  ];

  public function subtype()
  {
    return $this->hasOne('App\Subtype', 'ps_id', 'ps_id');
  }

  public function type()
  {
    return $this->hasOne('App\Type', 'pt_id', 'pt_id');
  }

  public static function getMaxInd()
  {
    $max = Product::max('product_ind');
    return $max == 0 ? 1 : $max + 5;
  }
}
