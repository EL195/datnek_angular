import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';


import { AccueilComponent } from './accueil/accueil.component';
import { OtherComponent } from './other/other.component';

//Définitions des routes
const routes: Routes = [
  { path: '', component: AccueilComponent },
  { path: 'accueil', component: AccueilComponent },
  { path: 'other', component: OtherComponent },


  // otherwise redirect to home
  { path: '**', redirectTo: 'accueil' }
];

export const appRoutingModule = RouterModule.forRoot(routes);

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
