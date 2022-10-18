import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { IndexComponent } from './index/index.component';
import { CreateComponent } from './create/create.component';

const routes: Routes = [
  { path: 'posiciones', redirectTo: 'posiciones/index', pathMatch: 'full'},
  { path: 'posiciones/index', component: IndexComponent },
  { path: 'posiciones/create', component: CreateComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PosicionesRoutingModule { }
