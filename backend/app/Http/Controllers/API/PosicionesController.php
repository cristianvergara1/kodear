<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Posicion;
use Log;

use Carbon\Carbon;

class PosicionesController extends Controller
{
    public function getAll()
    {
        //$data = Posicion::get();
        $data = Posicion::select('*')
            ->join('productos', 'productos.id', '=', 'posiciones.idProducto')
            ->join('empresas', 'empresas.id', '=', 'posiciones.idEmpresa')
            ->orderBy('UsoFrecuente')
            ->get();
        return response()->json($data, 200);
    }

    public function create(Request $request)
    {

        //si el importe es mayor a cero procedo a la creacion
        if($request['precio']>0){

            //comparo la fecha de entrega con la fecha actual
            $datetime1=date_create($request['fechaEntregaInicio']);
            $datetime2=date_create(date("Y-m-d"));
            $interval=date_diff($datetime1, $datetime2);
            $diferencia=$interval->format('%r%d');

            if($diferencia<0){
                //en caso de la fecha de entrega ser mayor a la fecha actual procedo a la creacion.
                $data['idEmpresa'] = $request['idEmpresa'];
                $data['idProducto'] = $request['idProducto'];
                $data['Posicion_Excepcional'] = $request['Posicion_Excepcional'];
                $data['fechaEntregaInicio'] = $request['fechaEntregaInicio'];
                $data['moneda'] = $request['moneda'];
                $data['precio'] = $request['precio'];

                Posicion::create($data);
                $mensaje='Creacion exitosa.';
                $success=true;
            }else{
                $mensaje='Fecha de entrega debe ser mayor a la fecha actual(hoy).';
                $success=false;
            }
        }else{
            $mensaje='importe debe ser mayor a 0';
            $success=false;
        }

        return response()->json([
            'message' => $mensaje,
            'success' => $success
        ], 200);

    }

    public function get($id)
    {
        $data = Posicion::find($id);
        return response()->json($data, 200);
    }

}
