import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Estudiante } from 'src/app/models/SQL_Models/Estudiante';

@Injectable({
  providedIn: 'root'
})
export class EstudianteService {

  /**
   * {
        "carnet": 2011000000
    }
   */
  url:string = '/apis/estudiante';

  constructor(private http:HttpClient) { }

  getAllEstudiantes():Observable<Estudiante>{
    return this.http.get<Estudiante>(this.url);
  }

  getEstudiante(carnet:number):Observable<Estudiante[]>{
    return this.http.get<Estudiante[]>(this.url + '/' + carnet);
  }

  addEstudiante(estudiante:Estudiante):Observable<Estudiante>{
    return this.http.post<Estudiante>(this.url, estudiante);
  }

  updateEstudiante(carnet:number, estudiante:Estudiante):Observable<Estudiante>{
    return this.http.put<Estudiante>(this.url + '/' + carnet, estudiante);
  }

  deleteEstudiante(carnet:number):Observable<Estudiante>{
    return this.http.delete<Estudiante>(this.url + '/' + carnet);
  }
}
