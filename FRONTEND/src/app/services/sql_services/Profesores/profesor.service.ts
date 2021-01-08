import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Profesor } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class ProfesorService {

  url:string = '/apis/profesor';

  constructor(private http:HttpClient) { }

  getAllProfesores():Observable<Profesor>{
    return this.http.get<Profesor>(this.url);
  }

  getProfesor(cedula:number):Observable<Profesor[]>{
    return this.http.get<Profesor[]>(this.url + '/' + cedula);
  }

  addProfesor(profesor:Profesor):Observable<Profesor>{
    return this.http.post<Profesor>(this.url, profesor);
  }

  updateProfesor(cedula:number,profesor:Profesor):Observable<Profesor>{
    return this.http.put<Profesor>(this.url + '/' + cedula, profesor);
  }

  deleteProfesor(cedula:number):Observable<Profesor>{
    return this.http.delete<Profesor>(this.url + '/' + cedula);
  }
}
