import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { Persona } from 'src/app/models/Persona';

@Injectable({
  providedIn: 'root'
})
export class PersonaService {

  constructor(private http:HttpClient) { }

  url:string = '/api/persona';

  // ----- CRUD DE PERSONA --------
  getAll():Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url);
  }

  getById(identificador:string):Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url + '/' + identificador);
  }

  postPersona(persona:Persona):Observable<Persona[]>{
    return this.http.post<Persona[]>(this.url, persona);
  }

  updatePersona(identificador:number, persona:Persona):Observable<Persona[]>{
    return this.http.put<Persona[]>(this.url + '/' + identificador, persona);
  }

  deletePersona(identificador:number):Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url + '/' + identificador);
  }

  // Seleccionar 
  selectEstudiantes():Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url + '/' + "seleccionarEstudiantes")
  }

  selectProfesores():Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url + '/' + "seleccionarProfesores")
  }

  selectAdministradores():Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url + '/' + "seleccionarAdministradores")
  }
}
