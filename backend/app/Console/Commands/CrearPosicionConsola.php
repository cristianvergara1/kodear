<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

use App\Models\Posicion;

class CrearPosicionConsola extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'crear:posicion {idEmpresa} {producto} {fechaEntrega} {moneda} {precio}';

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
        
        //si el importe es mayor a cero procedo a la creacion
        if($precio>0){

            //comparo la fecha de entrega con la fecha actual
            $datetime1=date_create($fechaEntrega);
            $datetime2=date_create(date("Y-m-d"));
            $interval=date_diff($datetime1, $datetime2);
            $diferencia=$interval->format('%r%d');

            if($diferencia<0){
                //en caso de la fecha de entrega ser mayor a la fecha actual procedo a la creacion.
                $data['idEmpresa'] = $idEmpresa;
                $data['idProducto'] = $producto;
                $data['fechaEntregaInicio'] = $fechaEntrega;
                $data['moneda'] = $moneda;
                $data['precio'] = $precio;

                Posicion::create($data);

                $mensaje='Creacion exitosa.';

            }else{
                $mensaje='Fecha de entrega debe ser mayor a la fecha actual(hoy).';
            }
        }else{
            $mensaje='importe debe ser mayor a 0';
        }

        die($mensaje);

        return $mensaje;
    }
}
