<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

use App\Models\Posicion;

use App\Http\Controllers\API\PosicionesController;

class CrearPosicionConsola extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'crear:posicion {idEmpresa?} {producto?} {fechaEntrega?} {moneda?} {precio?}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Crear una posición por consola';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        $idEmpresa = $this->argument('idEmpresa');
        $producto = $this->argument('producto');
        $fechaEntrega = $this->argument('fechaEntrega');
        $moneda = $this->argument('moneda');
        $precio = $this->argument('precio');

        $formato='Los parametros deben ser ingresados en el siguiente orden: {idEmpresa} {idProducto} {fechaEntrega, ej: 2022-10-30} {moneda} {precio}';

        if(is_null($idEmpresa)){
            die('*Empresa es un campo obligatorio. '.$formato);
        }

        if(is_null($producto)){
            die('*Producto es un campo obligatorio. '.$formato);
        }

        if(is_null($fechaEntrega)){
            die('*Fecha de Entrega es un campo obligatorio. '.$formato);
        }

        if(is_null($moneda)){
            die('*Moneda es un campo obligatorio. '.$formato);
        }

        if(is_null($precio)){
            die('*Precio es un campo obligatorio. '.$formato);
        }
        
        $posiciones=new PosicionesController();
        
        $request = new \Illuminate\Http\Request();
        $request->replace(
            ['idEmpresa' => $idEmpresa, 'idProducto' => $producto, 'fechaEntregaInicio' => $fechaEntrega, 'moneda' => $moneda,'precio' => $precio]
        );
        $result=$posiciones->create($request);
        
        echo $result->original['message'];
        
    }
}
