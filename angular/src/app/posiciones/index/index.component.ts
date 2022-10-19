import { Component, OnInit } from '@angular/core';

import { PosicionesService } from '../posiciones.service';
import { Posiciones } from '../posiciones';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {

  posiciones: Posiciones[] = [];

  // constructor() { }
  constructor(public PosicionesService: PosicionesService) { }

  ngOnInit(): void {
    this.PosicionesService.getAll().subscribe((data: Posiciones[])=>{
      this.posiciones = data;
      console.log(this.posiciones);
    })
  }

}
