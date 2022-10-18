import { Injectable } from '@angular/core';

import { HttpClient, HttpHeaders } from '@angular/common/http';

import {  Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

import { Posiciones } from './posiciones';

@Injectable({
  providedIn: 'root'
})
export class PosicionesService {

  
  private apiURL = "http://localhost:8000/api/posiciones/";

  httpOptions = {
     headers: new HttpHeaders({
       'Content-Type': 'application/json'
     })
  }

  constructor(private httpClient: HttpClient) { }

  getAll(): Observable<Posiciones[]> {
   return this.httpClient.get<Posiciones[]>(this.apiURL)
   .pipe(
     catchError(this.errorHandler)
   )
 }

 create(person): Observable<Posiciones> {
   return this.httpClient.post<Posiciones>(this.apiURL, JSON.stringify(person), this.httpOptions)
   .pipe(
     catchError(this.errorHandler)
   )
 }

 find(id): Observable<Posiciones> {
   return this.httpClient.get<Posiciones>(this.apiURL + id)
   .pipe(
     catchError(this.errorHandler)
   )
 }
 
 errorHandler(error) {
   let errorMessage = '';
   if(error.error instanceof ErrorEvent) {
     errorMessage = error.error.message;
   } else {
     errorMessage = `Error Code: ${error.status}\nMessage: ${error.message}`;
   }
   return throwError(errorMessage);
 }



}
