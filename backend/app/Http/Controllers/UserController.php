<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function register(Request $request)
    {
        try {

            $rules = [
                'name' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required',
            ];

            $validator = $this->getValidationFactory()
                ->make($request->all(), $rules);

            if ($validator->fails()) {
                return response()->json(["status" => false, "message" => $validator->messages()]);
            }

            $data = User::create([
                "name" => $request->name,
                "email" => $request->email,
                "password" => Hash::make($request->password),
            ]);

            if (!$data)
                return response()->json(["status" => false, "message" => "Your account has Not been Created "]);

            return response()->json(["status" => true, "message" => "Your account has been Created Successfully"]);
        } catch (\Exception $e) {
            return response()->json(["status" => true, "message" => $e->getMessage()]);
        }
    }

    public function login(Request $request)
    {
        try {
            $rules = [
                'email' => 'required|email',
                'password' => 'required',
            ];

            $validator = $this->getValidationFactory()
                ->make($request->all(), $rules);

            if ($validator->fails()) {
                return response()->json(["status" => false, "message" => $validator->messages()]);
            }

            $data = Auth::attempt(["email" => $request->email, "password" => $request->password]);

            if (!$data)
                return response()->json(["status" => false, "message" => "User Not Login "]);

            $user = Auth::user();

            $token = $request->user()->createToken("asfsa")->plainTextToken;

            return response()->json(["status" => true, "message" => "User Login Successfully", "token" => $token, "user" => $user]);
        } catch (\Exception $e) {
            return response()->json(["status" => false, "message" => $e->getMessage()]);
        }
    }

    public function logout(Request $request)
    {
        try {
            Auth::guard("web")->logout();
            $user = request()->user();
            $user->tokens()->where('id', $user->currentAccessToken()->id)->delete();
            return response()->json(["status" => true, "message" => "User Logout Successfully"]);
        } catch (\Exception $e) {
            return response()->json(["status" => false, "message" => $e->getMessage()]);
        }
    }

    public function verifytoken(Request $request)
    {
        try {

            return response()->json(["status" => true, "data" => Auth::user()]);
        } catch (\Exception $e) {
            return response()->json(["status" => false, "message" => $e->getMessage()]);
        }
    }
}
