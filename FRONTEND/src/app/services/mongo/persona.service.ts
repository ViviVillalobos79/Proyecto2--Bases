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

  getAll():Observable<Persona[]>{
    return this.http.get<Persona[]>(this.url);
  }
}
