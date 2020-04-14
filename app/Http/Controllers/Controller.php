<?php

namespace App\Http\Controllers;

use App\Customer;
use App\User;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    function login(Request $request)
    {
        $email = $request->get('email');
        $password = $request->get('password');
        if (Auth::attempt(['email' => $email, 'password' => $password])) {
            $user = Auth::user();
            if ($user->user_type === 'admin') {
               $token=$user->createToken('Shop')->accessToken;
                   return [
                       'message'=>'success',
                       'user'=>$user,
                       'token'=>'Bearer '.$token
                   ];
            } else if ($user->user_type == 'customer') {
                //return 'Can Order Food';
                $token=$user->createToken('Shop')->accessToken;
                   return [
                       'message'=>'success',
                       'user'=>$user,
                       'token'=>'Bearer '.$token
                   ];
            }

        } else {
            return [
                'message'=>'Email or Password does not match!'
            ];
        }

    }

    function user_register(Request $request){
        if($request->get('password')==$request->get('confirm_password')){
            $customer_id=Customer::create([
                'name'=>$request->get('name'),
                'phone'=>$request->get('phone'),
                'address'=>$request->get('address'),
                'township_id'=>$request->get('township_id'),
            ])->id;

            $user=User::create([
                'email'=>$request->get('email'),
                'password'=>Hash::make($request->get('password')),
                'user_type'=>'customer',
                'customer_id'=>$customer_id
            ]);
            return [
                'user'=>$user,
                'status'=>'success'
            ];
        }
        else{
            return [
                'message'=>'Confirm Password does not match!..'
            ];
        }
    }


}
