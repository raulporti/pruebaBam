<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()->first(), 'error' => $validator->errors()->first()]);
        }
        $input = $request->all();

        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        //$token['token'] =  $user->createToken(config('app.secret_key'))->accessToken;
        return response()->json(['success' => true, 'message' => 'Usuario creado correctamente']);
    }
    public function login(Request $request)
    {
        $input = $request->all();
        if (Auth::attempt(['name' => $input['name'], 'password' => $input['password']])) {
            $user = Auth::user();
            //$user['role'] = Auth::user()->roles->pluck('name');
            //$user['role'] = 'Administrador';

                $token =  $user->createToken(config('app.secret_key'))->accessToken;
                $user['token'] = $token;
                unset($user['created_at']);
                unset($user['updated_at']);
                return response()->json(['success' => true, 'data' => $user]);
        } else {
            return response()->json(['success' => false, 'mensaje' => 'Usuario y/o contraseña incorrectos']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
