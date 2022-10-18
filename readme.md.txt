A modo de detalle:
-Clonar los archivos al entorno local.
-Correr un servidor Apache y mysql, importar la base de datos.
-Ingresar a carpeta "angular" y ejecutar ng serve
-Ingresar a carpeta "backend" y ejecutar php artisan serve

Ejercicios BackEnd:
-api para consultar listado de productos ordenados por el campo “usoFrecuente” (0 ó 1) de la tabla productos: http://127.0.0.1:8000/api/productos
-api para crear una posición: http://127.0.0.1:8000/api/posiciones?idEmpresa=1&idProducto=3&Posicion_Excepcional=5&fechaEntregaInicio=2022-10-18&moneda=pesos&precio=10000
-api para Listar posiciones: http://127.0.0.1:8000/api/posiciones
-comando de consola para la creación de posiciones: php artisan crear:posicion

Todos fueron testeados con Postman.

Ejercicios FrontEnd:
Link http://localhost:4200/posiciones/index
