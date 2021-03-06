import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { environment } from '../../environments/environment';
import { Observable, throwError } from 'rxjs';
import { retry, catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  clicked : boolean = false;

  httpHeader = {
    headers: new HttpHeaders({
     
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin':'*',
      'Access-Control-Allow-Methods':'*',
      'Accept': 'application/json, text/plain',
    })
  };


  constructor(
    private http: HttpClient
  ) { }


//Obtention des langues
getData(url: string){
  const headers = new HttpHeaders({
    'Accept': 'application/json, text/plain',
    });
  let ll = environment.url+url;
  console.log(ll,{'headers':headers});
  return this.http.get(ll,{'headers':headers}).pipe( 
    retry(2),
    catchError(this.handleError)
  ); 
}

addData(url: string, data: any){
let ll =environment.url+url;
console.log(ll, data);
return this.http.post(ll, data);
}


delete(url: string){
  let ll =environment.url+url;
  console.log(ll);
  return this.http.delete(ll);
  }

  update(url: string, data:any){
    let ll =environment.url+url;
    console.log(ll);
    return this.http.put(ll, data);
    }


handleError(error: HttpErrorResponse) {
  // this.load.hideLoader();
  if (error.error instanceof ErrorEvent) {
    // A client-side or network error occurred. Handle it accordingly.
    console.error('An error occurred:', error.error.message);
  } else {
    // The backend returned an unsuccessful response code.
    // The response body may contain clues as to what went wrong,
    console.error(
      `Backend returned code ${error.status}, ` +
      `body was: ${error.error}`);
  }
  //this.presentToast(error.status);
  // return an observable with a user-facing error message
  return throwError(
    'Something bad happened; please try again later.');
};

changeButonStatus(){
  console.log('true');
  this.clicked = true;
 // return true;
}

disableModal(){
  console.log('true');
  this.clicked = false;
 // return true;
}
}
