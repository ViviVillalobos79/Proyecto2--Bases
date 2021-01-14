import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Administrador } from 'src/app/models/SQL_Models/Administrador';
@Injectable({
  providedIn: 'root'
})
export class AdministradorService {
  /**
   * Este servicio es utilizado para el CRUD de la entidad Administrador
   * Se maneja por medio de cedula el cual es de tipo number
   * 
   * {
        "cedula": 305550998
      }
   */
  url:string = '/apis/administrador';
  //https://localhost:44339/apis
  constructor(private http:HttpClient) { }

  getAllAdministradores():Observable<Administrador>{
    return this.http.get<Administrador>(this.url);
  }

  getAdministrador(cedula:number):Observable<Administrador[]>{
    return this.http.get<Administrador[]>(this.url + '/' + cedula);
  }

  addAdministrador(administrador:Administrador):Observable<Administrador>{
    return this.http.post<Administrador>(this.url, administrador);
  }

  updateAdministrador(cedula:number,administrador:Administrador):Observable<Administrador>{
    return this.http.put<Administrador>(this.url + '/' + cedula, administrador);
  }

  deleteAdministrador(cedula:number):Observable<Administrador>{
    return this.http.delete<Administrador>(this.url + '/' + cedula);
  }
}