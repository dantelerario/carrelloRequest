<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Client\Response;
use App\Cart;


class CartController extends Controller
{

    public function index(Request $request)
    {
        // chiamata da URL
        // $data = Http::get('http://AYPK5I43ZHRK6REF1UDK5U6HDKEHE4HZ@127.0.0.1/prestashop/api')->body();

        // return view('carts', ['data'=>$data]);
    }

    //APP_KEYS request
    protected $authKeys = array(
        'requestOnly' => 'ABCDEFGH2020',
        'fullAccess' => 'ABCDEFGH2020GOSPESA',
    );

    //chiamata da DB
    public function list(Request $request) 
    {
        $authKey = $this->authKeys;

        $token = $request->header('APP_KEY');
        $date = date('Y-m-d');

        if ($token == $authKey['fullAccess']) {
            $data = DB::table('orders_sellin')
            ->leftJoin('orders_sellout', 'orders_sellin.id', '=', 'orders_sellout.id')
            ->select('*')
            ->whereDate('date_add', $date) //modificare in base a quale data bisogna accedere, date_add, data_update, date_assign_misssion ecc
            ->get();

            // return view( 'cartview', ['data'=>$data] );
            echo json_encode($data);
        } elseif ($token == $authKey['requestOnly']) {
            $data = DB::table('orders_sellin')
            ->leftJoin('orders_sellout', 'orders_sellin.id', '=', 'orders_sellout.id')
            ->select('*')
            ->whereDate('date_add', $date) //modificare in base a quale data bisogna accedere, date_add, data_update, date_assign_misssion ecc
            ->get();

            // return view( 'cartview', ['data'=>$data] );
            echo json_encode($data);
        } else {
            return response()->json(['message' => 'APP KEY NOT VALID\NOT FOUND'], 401);
        }
    }
}
