import { Component } from '@angular/core';
import {TranslateService} from '@ngx-translate/core';
import { ApiService } from './services/api.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'datnek-angular';
  //Injection TranslateService dans le constructeur.
  constructor(
    private translate: TranslateService,
    public con: ApiService,
    ) 
    {
      translate.setDefaultLang('en');
  }

    useLanguage(lanID : any){
      this.translate.use(lanID);
      // Afficher la langue actuelle
    }

    
}
