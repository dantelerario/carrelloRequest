<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Order extends Model
{
   protected $table = "orders_sellin";

   public static function list() {

      $data = DB::table('orders_sellin')
         ->join('orders_sellout', function ($join) {
         $date = date('Y-m-d');
         $join->on('orders_sellin.id_order', '=', 'orders_sellout.id_order')
              ->on('orders_sellin.order_type', '=','orders_sellout.order_type')
              ->on('orders_sellin.pdv_code', '=','orders_sellout.pdv_code')
              ->whereDate('date_add', $date);
      })->get();

      return $data;
   }   
}
