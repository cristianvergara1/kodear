import { Component, OnInit } from '@angular/core';

import { PosicionesService } from '../posiciones.service';
import { EmpresasService } from '../../empresas/empresas.service';
import { ProductosService } from '../../productos/productos.service';
import { Router } from '@angular/router';
import { FormGroup, FormControl, Validators } from '@angular/forms';

import { Empresas } from '../../empresas/empresas';
import { Productos } from '../../productos/productos';

@Component({
  selector: 'app-create',
  templateUrl: './create.component.html',
  styleUrls: ['./create.component.css']
})
export class CreateComponent implements OnInit {

  empresas: Empresas[] = [];
  productos: Productos[] = [];
  monedas = [
    {nombre: 'PESOS'},
    {nombre: 'DOLARES'}
  ];

  form: FormGroup;

  constructor(
    public PosicionesService: PosicionesService,
    public EmpresasService: EmpresasService,
    public ProductosService: ProductosService,
    private router: Router
  ) { }

  ngOnInit(): void {

    this.EmpresasService.getAll().subscribe((data: Empresas[])=>{
      this.empresas = data;
    })

    this.ProductosService.getAll().subscribe((data: Productos[])=>{
      this.productos = data;
    })

    this.form = new FormGroup({
      idEmpresa: new FormControl('', [ Validators.required, Validators.pattern("^[0-9]*$") ]),
      idProducto: new FormControl('', [ Validators.required, Validators.pattern("^[0-9]*$") ]),
      fechaEntregaInicio: new FormControl('', [ Validators.required ]),
      moneda: new FormControl('', [ Validators.required ]),
      precio: new FormControl('', [ Validators.required ])
    });

  }

  get f(){
    return this.form.controls;
  }

  submit(){
    console.log(this.form.value);
    this.PosicionesService.create(this.form.value).subscribe(
      data => {
        alert(data['message']);
        if(data['success']==true){
          this.router.navigateByUrl('posiciones/index');
        }
      })
  }

}
