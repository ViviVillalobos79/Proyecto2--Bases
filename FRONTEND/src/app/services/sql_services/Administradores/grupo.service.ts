import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Grupo } from 'src/app/models/SQL_Models/Administrador';

@Injectable({
  providedIn: 'root'
})
export class GrupoService {
  /**
   * {
        "id_grupo": 1,
        "numero_grupo": 1,
        "semestre": 1,
        "profesor": 508880741
    }
   */
  url:string = '/apis/administrador/grupo';

  constructor(private http:HttpClient) { }

  getAllGrupo():Observable<Grupo>{
    return this.http.get<Grupo>(this.url);
  }

  getGrupo(id_grupo:number):Observable<Grupo[]>{
    return this.http.get<Grupo[]>(this.url + '/' + id_grupo);
  }

  addGrupo(grupo:Grupo):Observable<Grupo>{
    return this.http.post<Grupo>(this.url, grupo);
  }

  updateGrupo(id_grupo:number,grupo:Grupo):Observable<Grupo>{
    return this.http.put<Grupo>(this.url + '/' + id_grupo, grupo);
  }

  deleteGrupo(id_grupo:number):Observable<Grupo>{
    return this.http.delete<Grupo>(this.url + '/' + id_grupo);
  }
}
