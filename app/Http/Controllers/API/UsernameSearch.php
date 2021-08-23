<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\UsernameRequest;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redis;

class UsernameSearch extends Controller
{
    //

    private $client;

    private $url;

    public function __construct()
    {
        $this->client = new Client();
        $this->url = "https://api.github.com/users/";
    }

    public function search(UsernameRequest $request)
    {

        try {

            if (Redis::exists('username-'.$request->post('username'))){

                $response = Redis::get('username-'.$request->post('username'));

                $body = json_decode($response);

            } else {


                $response = $this->client->get(
                    $this->url . $request->post('username')
                );

                $body = json_decode($response->getBody());

                Redis::set('username-' . $request->post('username'), $response->getBody());
                Redis::expire('username-' . $request->post('username'), 120);
            }

            $message = [
                'name' => $body->name,
                'login' => $body->login,
                'company' => $body->company,
                'followers' => $body->followers,
                'public_repositories' => $body->public_repos,
                'avg_followers' => $body->followers / $body->public_repos
            ];

            return response()->json($message);

        }
        catch (\Exception $e){

            Log::error($e->getMessage());
            return response()->json(['message' => 'Username not found'], 404);

        }
    }
}
