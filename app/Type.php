<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\URL;

class Type extends Model
{
  protected $table = 'product_type';
  protected $primaryKey = 'pt_id';
  public $timestamps = false;

  public function subtype()
  {
    return $this->hasMany('App\Subtype', 'pt_id', 'pt_id');
  }

  /**
   * 取得大分類列表
   */
  public static function getTypeList()
  {
    $list =  Type::where('pt_ispublic', 1)
      ->orderBy('pt_ind', 'desc')
      ->get()->toArray();
    $result = [];
    foreach ($list as $key => $row) {
      $subtypeData = self::getSubtypeList($row['pt_id']);
      $result[$key] = [
        'id' => $row['pt_id'],
        'name' => $row['pt_name_tw'],
        'pic' => empty($row['pt_pic']) ? '' : URL::asset('storage/upload/type/b' . $row['pt_pic']),
        'subtype' => $subtypeData
      ];
    }
    return $result;
  }

  public static function list(){
    $list =  Type::get()->toArray();
  $result = [];
  foreach ($list as $key => $row) {
    $result[$row['pt_id']] = $row['pt_name'];
  }
  return $result;
  }

  /**
   * 透過 type id 取得 subtype list
   * @param integer type id
   */
  public static function getSubtypeList($typeId)
  {
    return  Type::find($typeId)->subtype()->get()->toArray();
  }

  public static function test()
  {
    var_dump(URL::asset('upload/product/b1595559303A5mW9t.jpg'));
    exit;
    var_dump(Config::get('app.url'));
    exit;
  }

  public static function getMaxInd()
  {
    $max = Type::max('pt_ind');
    return $max == 0 ? 1 : $max + 5;
  }
}
