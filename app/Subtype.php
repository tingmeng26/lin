<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subtype extends Model
{
    protected $table = 'product_stype';
    protected $primaryKey ='ps_id';
    public $timestamps = false;
}
