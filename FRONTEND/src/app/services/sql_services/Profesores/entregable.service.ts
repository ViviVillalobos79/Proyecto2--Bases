import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Entregable } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class EntregableService {

  /**
   * {
        "id_entregable": 1,
        "id_evaluacion": 1,
        "observaciones": "Falto Problema 2",
        "nota": 80,
        "fecha_entrega": "8/12/2020 12:00:00 a. m.",
        "docu_estudiante": "URL 1",
        "docu_profesor": ""
    }
   */
  url:string = '/apis/profesor/entregable';

  constructor(private http:HttpClient) { }

  getAllEntregables():Observable<Entregable>{
    return this.http.get<Entregable>(this.url);
  }

  getEntregable(id_Entregable:number):Observable<Entregable[]>{
    return this.http.get<Entregable[]>(this.url + '/' + id_Entregable);
  }

  addEntregable(entregable:Entregable):Observable<Entregable>{
    return this.http.post<Entregable>(this.url, entregable);
  }

  updateEntregable(id_Entregable:number, entregable:Entregable):Observable<Entregable>{
    return this.http.put<Entregable>(this.url + '/' + id_Entregable, entregable);
  }

  deleteEntregable(id_Entregable:number):Observable<Entregable>{
    return this.http.delete<Entregable>(this.url + '/' + id_Entregable);
  }
}
