<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Client\Response;
use App\Models\Order;


class OrderController extends Controller
{

    public function index(Request $request)
    {
        //
    }

    //APP_KEYS request
    protected $authKeys = array(
        'requestOnly' => 'ABCDEFGH2020',
        'fullAccess' => 'ABCDEFGH2020GOSPESA',
    );

    public function callList(Request $request) {

        $authKey = $this->authKeys;
        $token = $request->header('APP_KEY');

        if ($token == $authKey['fullAccess']) {
                $data = Order::list();
                echo json_encode($data);
        } elseif ($token == $authKey['requestOnly']) {
                $data = Order::list();
                echo json_encode($data);
        } else {
                return response()->json(['message' => 'APP KEY NOT VALID\NOT FOUND'], 401);
        }
    }
}
