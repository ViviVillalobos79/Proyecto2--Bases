import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Evaluacion } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class EvaluacionService {

  /**
   * {
        "id_evaluacion": 1,
        "tipo_evaluacion": "Individual",
        "especificacion": "Quiz 1",
        "fecha": "22/12/2020 12:00:00 a. m.",
        "hora": "23:55:00",
        "rubro": 1,
        "grupo": 1
    }
   */
  url:string = '/apis/profesor/evaluacion';

  constructor(private http:HttpClient) { }

  getAllEvaluaciones():Observable<Evaluacion>{
    return this.http.get<Evaluacion>(this.url);
  }

  getEvaluacion(id_Evaluacion:number):Observable<Evaluacion[]>{
    return this.http.get<Evaluacion[]>(this.url + '/' + id_Evaluacion);
  }

  addEvaluacion(evaluacion:Evaluacion):Observable<Evaluacion>{
    return this.http.post<Evaluacion>(this.url, evaluacion);
  }

  updateEvaluacion(id_Evaluacion:number, evaluacion:Evaluacion):Observable<Evaluacion>{
    return this.http.put<Evaluacion>(this.url + '/' + id_Evaluacion, evaluacion);
  }

  deleteEvaluacion(id_Evaluacion:number):Observable<Evaluacion>{
    return this.http.delete<Evaluacion>(this.url + '/' + id_Evaluacion);
  }
}
