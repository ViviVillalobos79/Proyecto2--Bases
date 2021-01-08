import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Semestre } from 'src/app/models/SQL_Models/Administrador';

@Injectable({
  providedIn: 'root'
})
export class SemestreService {

  /**
   * {
        "id_semestre": 1,
        "periodo": "1",
        "ano": 2015,
        "administrador": 702360598
    }
   */
    
  url:string = '/apis/administrador/semestre';

  constructor(private http:HttpClient) { }

  getAllSemestres():Observable<Semestre>{
    return this.http.get<Semestre>(this.url);
  }

  getSemestre(id_semestre:number):Observable<Semestre[]>{
    return this.http.get<Semestre[]>(this.url + '/' + id_semestre);
  }

  addSemestre(semestre:Semestre):Observable<Semestre>{
    return this.http.post<Semestre>(this.url, semestre);
  }

  updateSemestre(id_semestre:number,semestre:Semestre):Observable<Semestre>{
    return this.http.put<Semestre>(this.url + '/' + id_semestre, semestre);
  }

  deleteSemestre(id_semestre:number):Observable<Semestre>{
    return this.http.delete<Semestre>(this.url + '/' + id_semestre);
  }
}
