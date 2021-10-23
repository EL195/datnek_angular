import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AccueilComponent } from './accueil/accueil.component';
import { NouveauComponent } from './nouveau/nouveau.component';
import { ModifierComponent } from './modifier/modifier.component';

@NgModule({
  declarations: [
    AppComponent,
    AccueilComponent,
    NouveauComponent,
    ModifierComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
