import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Documento } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class DocumentoService {
  /**
   * {
        "id_documento": 1,
        "tamano": 45,
        "fecha": "8/12/2020 12:00:00 a. m.",
        "nombre_documento": "Nombre 1",
        "carpeta": 1
    }
   */
  url:string = '/apis/profesor/documento';

  constructor(private http:HttpClient) { }

  getAllDocumentos():Observable<Documento>{
    return this.http.get<Documento>(this.url);
  }

  getDocumento(id_Documento:number):Observable<Documento[]>{
    return this.http.get<Documento[]>(this.url + '/' + id_Documento);
  }

  addDocumento(documento:Documento):Observable<Documento>{
    return this.http.post<Documento>(this.url, documento);
  }

  updateDocumento(id_Documento:number, documento:Documento):Observable<Documento>{
    return this.http.put<Documento>(this.url + '/' + id_Documento, documento);
  }

  deleteDocumento(id_Documento:number):Observable<Documento>{
    return this.http.delete<Documento>(this.url + '/' + id_Documento);
  }
}