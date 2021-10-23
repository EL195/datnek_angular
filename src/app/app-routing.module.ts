import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';


import { AccueilComponent } from './accueil/accueil.component';

//Définitions des routes
const routes: Routes = [
  { path: '', component: AccueilComponent },
  { path: 'accueil', component: AccueilComponent },

  // otherwise redirect to home
  { path: '**', redirectTo: 'accueil' }
];

export const appRoutingModule = RouterModule.forRoot(routes);

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
