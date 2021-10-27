import { Component, OnInit } from '@angular/core';
import { ApiService } from '../services/api.service';
import {TranslateService} from '@ngx-translate/core';
import { ToastrService } from 'ngx-toastr';
import { IfStmt } from '@angular/compiler';
import { elementEventFullName } from '@angular/compiler/src/view_compiler/view_compiler';

@Component({
  selector: 'app-accueil',
  templateUrl: './accueil.component.html',
  styleUrls: ['./accueil.component.css']
})
export class AccueilComponent implements OnInit {
  // Varible pour recupérer les langues
  items: any;
  itemSelected : any;
  normal : boolean = true;

  //Déclarations des variables du formulaire
  langue : string = "";
  speak : string = "";
  write : string = "";
  under : string = "";
  clicked: boolean = false;
  texting : any = {};
  language: string = this.translateService.currentLang; // Récupéation de la langue actuelle
  countL: any;
  itemOne: any;
  elements: any;


  constructor(
    private con: ApiService,
    private translateService: TranslateService,
    private toastr: ToastrService
  ) { 
    
  }

  ngOnInit(): void {
  this.translateService.get('lang').subscribe((data:any)=> {
    console.log(data);
    this.texting = data;
    this.getData();
   });
  }
  // Récupération des données à afficher
  getData() {
    this.con.getData("langue").subscribe( async (data:any)=>{
        console.log(data);
        this.elements = data;
        // Récuperer le nombre de langues
        this.countL =this.elements.length;
        console.log(this.countL);

      })
  }



  // Ajouter une langue
  add() {
    if(this.langue[0]!= undefined || this.speak[0] !=undefined || this.write[0]!=undefined || this.under[0]!=undefined){
      //Création de l'objet pour enregistrement
      let newer = {
        titre : this.langue[0],
        code_court : "test",
        comprehension : this.under[0],
        parle : this.speak[0],
        ecrit : this.write[0]
      };
      console.log(newer);
       this.con.addData("add", newer).subscribe( async (data:any)=>{
        console.log(data);
        if(data=="success"){
          this.success(this.texting.success);
          console.log('ok')
          //Actualisation de l'affichage des données
          this.getData();
        }
        //this.items = data;
      })  
    }else{
      console.log('erreur')
      this.warning();
    }

  }
  //Afficher le message de succès
  success(text:any){
    this.toastr.success(text)
  } 

  //Afficher le message d'avertissement
  warning(){
    this.toastr.warning(this.texting.warning)
  } 

  moadalOpen(item:any){
    this.clicked = true;
    this.itemSelected = item;
    this.con.changeButonStatus();

  }

  // Afficher un langue sélectionnée
  moadalclose(){
     this.con.disableModal();
   }

   //Afficher le formulaire d'edition
   update(element:any){
    this.itemOne = element;
    this.normal=false;
   }

   //Envoyer les données vers l'api pour modification
  makeUpdate(itemO:any) {
   // console.log(itemO)
    let donnees = {
      titre : this.langue[0]==undefined ? itemO.titre : this.langue[0],
      code_court : "test",
      comprehension : this.under[0]==undefined ? itemO.comprehension : this.under[0],
      parle : this.speak[0]==undefined ? itemO.parle : this.speak[0],
      ecrit : this.write[0]==undefined ? itemO.ecrit : this.write[0],
      id : itemO.id
    };
    console.log(donnees);
    this.con.update("update", donnees).subscribe( async (data:any)=>{
      //Mis à jour des données dans la vue après message de succès
        if(data=="success"){
          this.success(this.texting.updateS)
          this.getData();
        }
      })  
    }

//Supprimer une langue
   delete(id:any){
    // console.log('ici');
      let da = {
        id : id
      }
     //this.con.disableModal();
     this.con.delete("delete/"+id).subscribe( async (data:any)=>{
        this.success(this.texting.successDel);
        //Actualisation de l'affichage des données
        this.getData();
    })
   }

}
