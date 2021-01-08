import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Grupo_Estudiante } from 'src/app/models/SQL_Models/Administrador';

@Injectable({
  providedIn: 'root'
})
export class GrupoEstudianteService {
  /**
  *{
        "id_grupo": 1,
        "carnet": 2013053251
    } 
  */
  url:string = '/apis/administrador/grupo/estudiante';

  constructor(private http:HttpClient) { }

  getAllGrupo_Estudiantes():Observable<Grupo_Estudiante>{
    return this.http.get<Grupo_Estudiante>(this.url);
  }

  getGrupo_Estudiante(carnet:number):Observable<Grupo_Estudiante[]>{
    return this.http.get<Grupo_Estudiante[]>(this.url + '/' + carnet);
  }

  addGrupo_Estudiante(grupo_estudiante:Grupo_Estudiante):Observable<Grupo_Estudiante>{
    return this.http.post<Grupo_Estudiante>(this.url, grupo_estudiante);
  }

  updateGrupo_Estudiante(carnet:number,grupo_estudiante:Grupo_Estudiante):Observable<Grupo_Estudiante>{
    return this.http.put<Grupo_Estudiante>(this.url + '/' + carnet, grupo_estudiante);
  }

  deleteGrupo_Estudiante(carnet:number):Observable<Grupo_Estudiante>{
    return this.http.delete<Grupo_Estudiante>(this.url + '/' + carnet);
  }
}
