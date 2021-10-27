import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AccueilComponent } from './accueil/accueil.component';

import { FormsModule } from '@angular/forms';
// import du ngx-translate et le chargeur http
import {TranslateLoader, TranslateModule} from '@ngx-translate/core';
import {TranslateHttpLoader} from '@ngx-translate/http-loader';
import {HttpClient, HttpClientModule} from '@angular/common/http';

//Import des notifications
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ToastrModule } from 'ngx-toastr';

import { OtherComponent } from './other/other.component';

@NgModule({
  declarations: [
    AppComponent,
    AccueilComponent,
    OtherComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
     // import du ngx-translate et le chargeur http
     HttpClientModule,
     FormsModule, 
     BrowserAnimationsModule,
	   ToastrModule.forRoot(),     
     TranslateModule.forRoot({
         loader: {
             provide: TranslateLoader,
             useFactory: HttpLoaderFactory,
             deps: [HttpClient]
         }
     })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

// requis pour la compilation AOT
export function HttpLoaderFactory(http: HttpClient): TranslateHttpLoader {
  return new TranslateHttpLoader(http);
}