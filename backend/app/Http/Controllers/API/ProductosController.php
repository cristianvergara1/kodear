<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Models\Producto;
Use Log;

class ProductosController extends Controller
{
    public function getAll(){
      $data = Producto::all()->sortBy("UsoFrecuente");
      return response()->json($data, 200);
    }

    public function create(Request $request){
      $data['nombre'] = $request['nombre'];
      $data['UsoFrecuente'] = $request['UsoFrecuente'];
      Producto::create($data);
      return response()->json([
          'message' => "Creado exitosamente",
          'success' => true
      ], 200);
    }

    public function get($id){
      $data = Producto::find($id);
      return response()->json($data, 200);
    }

}
