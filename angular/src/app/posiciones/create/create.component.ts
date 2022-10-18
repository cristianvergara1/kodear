import { Component, OnInit } from '@angular/core';

import { PosicionesService } from '../posiciones.service';
import { Router } from '@angular/router';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-create',
  templateUrl: './create.component.html',
  styleUrls: ['./create.component.css']
})
export class CreateComponent implements OnInit {

  form: FormGroup;

  constructor(
    public PosicionesService: PosicionesService,
    private router: Router
  ) { }

  ngOnInit(): void {

    this.form = new FormGroup({
      idEmpresa: new FormControl('', [ Validators.required, Validators.pattern("^[0-9]*$") ]),
      idProducto: new FormControl('', [ Validators.required, Validators.pattern("^[0-9]*$") ]),
      fechaEntregaInicio: new FormControl(''),
      moneda: new FormControl(''),
      precio: new FormControl('')
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
