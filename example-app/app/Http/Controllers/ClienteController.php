<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Clientes;

class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $clientes = DB::table('te_clientes')
                        ->select('*')
                        ->get();
        return response()->json(['success' => true, 'message' => 'Clientes Seleccionados', 'data'=> $clientes]);
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
        try {
            $input = $request->all();
            $clientes = Clientes::Create($input);
            return response()->json(['success'=> true, 'message'=> 'Colonia Ingresada Correctamente', 'data'=>$clientes]);
        } catch (Exception $e) {
            return response()->json(['succes'=> false, 'message'=> 'Error al Ingresar Colonia', 'data'=>$e]);
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
        $clientes = DB::table('te_clientes')
        ->select('*')
        ->where('cli_codigo_cliente', '=', $id)
        ->get();
return response()->json(['success' => true, 'message' => 'Clientes Seleccionados', 'data'=> $clientes]);

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
        dd($request);
        try{
            
            $affected = DB::table('te_clientes')
            ->where('cli_codigo_cliente', $id)
            ->update($request);
                return response()->json(['success'=> true, 'message'=>'Cliente Actualizado Correctamente', 'data'=>$cliente]);
            } catch (Exception $e) {
                return response()->json(['success'=> false, 'message'=>'Error al Actualizar Cliente', 'data'=>$e]);
            }
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
