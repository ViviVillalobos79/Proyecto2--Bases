import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Noticia } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class NoticiaService {

  /**
   * {
        "id_noticia": 1,
        "titulo": "Quiz 1",
        "autor": "508880741",
        "fecha": "22/12/2020 12:00:00 a. m.",
        "mensaje": "Ya se encuentra en XTECDigital la especificación sobreQuiz 1",
        "grupo": 1
    }
   */
  url:string = '/apis/profesor/noticia';

  constructor(private http:HttpClient) { }

  getAllNoticias():Observable<Noticia>{
    return this.http.get<Noticia>(this.url);
  }

  getNoticia(id_Noticia:number):Observable<Noticia[]>{
    return this.http.get<Noticia[]>(this.url + '/' + id_Noticia);
  }

  addNoticia(Noticia:Noticia):Observable<Noticia>{
    return this.http.post<Noticia>(this.url, Noticia);
  }

  updateNoticia(id_Noticia:number, Noticia:Noticia):Observable<Noticia>{
    return this.http.put<Noticia>(this.url + '/' + id_Noticia, Noticia);
  }

  deleteNoticia(id_Noticia:number):Observable<Noticia>{
    return this.http.delete<Noticia>(this.url + '/' + id_Noticia);
  }
}
