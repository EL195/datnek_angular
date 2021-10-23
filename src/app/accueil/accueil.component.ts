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
  itemSelected : any;

  //Déclarations des variables du formulaire
  langue : any;
  speak : any;
  write : any;
  under : any;
  clicked: boolean = false;

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
      this.con.addData("langue", newer).subscribe( async (data:any)=>{
        console.log(data);
        this.items = data;
      }) 
    }

  }

  moadalOpen(item:any){
   // console.log(item);
    this.clicked = true;
    this.itemSelected = item;
    this.con.changeButonStatus();

  }

  // Afficher un langue sélectionnée
  moadalclose(){
    // console.log('ici');
     this.con.disableModal();
   }

   update(id:any){
    // console.log('ici');
     let donnees = {
       id : id
     }
     this.con.disableModal();
     this.con.getData("langue/"+donnees).subscribe( async (data:any)=>{
      console.log(data);
      this.items = data;
    })
   }


   delete(id:any){
    // console.log('ici');
     this.con.disableModal();
   }

}
