import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Carpeta } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class CarpetaService {

  /**
   * {
        "id_carpeta": 1,
        "nombre": "Presentaciones",
        "fecha": "22/12/2020 12:00:00 a. m."
    }
   */
  url:string = '/apis/profesor/carpeta';

  constructor(private http:HttpClient) { }

  getAllCarpetas():Observable<Carpeta>{
    return this.http.get<Carpeta>(this.url);
  }

  getCarpeta(id_carpeta:number):Observable<Carpeta[]>{
    return this.http.get<Carpeta[]>(this.url + '/' + id_carpeta);
  }

  addCarpeta(carpeta:Carpeta):Observable<Carpeta>{
    return this.http.post<Carpeta>(this.url, carpeta);
  }

  updateCarpeta(id_carpeta:number, carpeta:Carpeta):Observable<Carpeta>{
    return this.http.put<Carpeta>(this.url + '/' + id_carpeta, carpeta);
  }

  deleteCarpeta(id_carpeta:number):Observable<Carpeta>{
    return this.http.delete<Carpeta>(this.url + '/' + id_carpeta);
  }
}
