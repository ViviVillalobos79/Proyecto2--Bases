import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Rubro } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class RubroService {
  /**
   * {
        "id_rubro": 1,
        "nombre_rubro": "Quices",
        "porcentaje": 20,
        "grupo": 1
    }
   */
  url:string = '/apis/profesor/rubro';

  constructor(private http:HttpClient) { }

  getAllRubros():Observable<Rubro>{
    return this.http.get<Rubro>(this.url);
  }

  getRubro(id_Rubro:number):Observable<Rubro[]>{
    return this.http.get<Rubro[]>(this.url + '/' + id_Rubro);
  }

  addRubro(rubro:Rubro):Observable<Rubro>{
    return this.http.post<Rubro>(this.url, rubro);
  }

  updateRubro(id_Rubro:number, rubro:Rubro):Observable<Rubro>{
    return this.http.put<Rubro>(this.url + '/' + id_Rubro, rubro);
  }

  deleteRubro(id_Rubro:number):Observable<Rubro>{
    return this.http.delete<Rubro>(this.url + '/' + id_Rubro);
  }
}
