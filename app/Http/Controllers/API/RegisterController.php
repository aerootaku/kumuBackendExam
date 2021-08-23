<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class RegisterController extends Controller
{
    /**
     * Register api
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(UserRequest $request)
    {

        DB::beginTransaction();

        try {
            //

            $user = User::create($request->all());
            $accessToken = $user->createToken('MyApp')->accessToken;

            DB::commit();
            $notification = array(
                'token' => $accessToken,
                'user' => $user,
                'message' => 'User Created Successfully',
                'type' => 'success',
            );

            return response()->json($notification);

        } catch (\Exception $e) {
            Log::error($e->getMessage());
            DB::rollback();
            $notification = array(
                'message' => $e->getMessage(),
                'type' => 'danger',
            );

            return response()->json($notification);
        }
    }

    /**
     * Login api
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        try {

            $request->validate([
                'username' => 'required',
                'password' => 'required'
            ]);

            $loginData = $request->only('username', 'password');

            if (!auth()->attempt($loginData)) {
                return response()->json(['message' => 'Invalid Credentials']);
            }

            $accessToken = auth()->user()->createToken('MyApp')->accessToken;

            return response()->json(['user' => auth()->user(), 'access_token' => $accessToken]);
        }
        catch (\Exception $e){
            Log::error($e->getMessage());
            return response()->json(['message' => $e->getMessage()]);
        }
    }

    public function logout()
    {

        if (auth()->check()) {
            auth()->user()->token()->revoke();

            return response()->json(['message' => 'User Successfully Logged out']);
        }

        return response()->json(['message' => 'Unauthenticated']);
    }

    public function fetchUsers()
    {
        try {

            $users = User::all()->sortBy('name');

            return response()->json($users);

        }
        catch (\Exception $e){
            Log::error($e->getMessage());
            return response()->json(['message' => $e->getMessage()]);
        }
    }

    /*
     * Optional
     * Hamming difference calculation
     */

    public function hammingDifference(Request $request)
    {
        $request->validate([
            'num1' => 'required',
            'num2' => 'required'
        ]);

        $humming_distance = 0;

        $len1 = strlen($request->post('num1'));
        $len = 0;

        do {
            $hex1 = hexdec(substr($request->post('num1'), $len, 8));
            $hex2 = hexdec(substr($request->post('num2'), $len, 8));
            $len += 8;
            for ($i = 0; $i < 32; $i++) {
                $k = (1 << $i);
                if (($hex1 & $k) !== ($hex2 & $k)) {
                    $humming_distance++;
                }
            }
        } while ($len < $len1);

        return response()->json($humming_distance);
    }
}
