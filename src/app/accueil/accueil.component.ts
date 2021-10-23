import { Component, OnInit } from '@angular/core';
import { ApiService } from '../services/api.service';

@Component({
  selector: 'app-accueil',
  templateUrl: './accueil.component.html',
  styleUrls: ['./accueil.component.css']
})
export class AccueilComponent implements OnInit {
  // Varible pour recupérer les langues
  items: any;

  //Déclarations des variables du formulaire
  langue : any;
  speak : any;
  write : any;
  under : any;

  constructor(
    private con: ApiService,
  ) { }

  ngOnInit(): void {
    this.getData();
  }
  getData() {
    this.con.getData("langue").subscribe( async (data:any)=>{
        console.log(data);
        this.items = data;
      })
  }


  // Ajouter une langue
  add() {
    if(this.langue!= undefined  || this.speak !=undefined || this.write!=undefined || this.under !=undefined){
      //Création de l'objet pour enregistrement
      let newer = {
        titre : this.langue,
        code_court : "test",
        comprehension : this.under,
        parle : this.speak,
        ecrit : this.write
      };
      console.log(newer);
    }
/*     this.con.AddData("langue").subscribe( async (data:any)=>{
        console.log(data);
        this.items = data;
      }) */
  }

}
