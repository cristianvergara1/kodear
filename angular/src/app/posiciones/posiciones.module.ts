import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PosicionesRoutingModule } from './posiciones-routing.module';
import { IndexComponent } from './index/index.component';
import { CreateComponent } from './create/create.component';

import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { SegundaComponent } from './segunda/segunda.component';
import { TerceraComponent } from './tercera/tercera.component';

@NgModule({
  declarations: [IndexComponent, CreateComponent, SegundaComponent, TerceraComponent],
  imports: [
    CommonModule,
    PosicionesRoutingModule,
    FormsModule,
    ReactiveFormsModule
  ]
})
export class PosicionesModule { }
