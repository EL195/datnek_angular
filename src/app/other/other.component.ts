import { Component, OnInit } from '@angular/core';
import { ApiService } from '../services/api.service';

@Component({
  selector: 'app-other',
  templateUrl: './other.component.html',
  styleUrls: ['./other.component.css']
})
export class OtherComponent implements OnInit {

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


 }




 moadalOpen(){
   this.clicked = true;
   this.con.changeButonStatus();

 }

 // Afficher un langue sélectionnée
 moadalclose(){
   // console.log('ici');
    this.con.disableModal();
  }

  update(){
    this.con.disableModal();
  }


  delete(){
   // console.log('ici');
    this.con.disableModal();
  }

}
