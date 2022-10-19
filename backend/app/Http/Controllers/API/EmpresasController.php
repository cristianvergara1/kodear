<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class EmpresasController extends Controller
{
    public function getAll()
    {
        $data = DB::table('empresas')
            ->select(
                    "empresas.id",
                    "empresas.cuit",
                    "empresas.razonSocial"
                    )
            ->get();

        return response()->json($data, 200);
    }
}
