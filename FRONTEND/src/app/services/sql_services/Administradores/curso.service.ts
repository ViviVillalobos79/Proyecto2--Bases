import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Curso } from 'src/app/models/SQL_Models/Administrador';
@Injectable({
  providedIn: 'root'
})
export class CursoService {
  /**
   * Este servicio es utilizado para el CRUD de la entidad Curso
   * Se maneja por medio de codigo_curso el cual es de tipo string
   *
   * {
        "codigo_curso": "CE3101",
        "nombre_curso": "Bases de Datos",
        "creditos": 4,
        "carrera": "Ingenieria en Computadores",
        "habilitado": "True",
        "administrador": 305550998
    }
   */
  url:string = '/apis/administrador/curso';
  constructor(private http:HttpClient) { }

  getAllCursos():Observable<Curso[]>{
    return this.http.get<Curso[]>(this.url);
  }

  getCurso(codigo_curso:string):Observable<Curso[]>{
    return this.http.get<Curso[]>(this.url + '/' + codigo_curso);
  }

  addCurso(curso:Curso):Observable<Curso>{
    return this.http.post<Curso>(this.url, curso);
  }

  updateCurso(codigo_curso:string,Curso:Curso):Observable<Curso>{
    return this.http.put<Curso>(this.url + '/' + codigo_curso, Curso);
  }

  deleteCurso(codigo_curso:string):Observable<Curso>{
    return this.http.delete<Curso>(this.url + '/' + codigo_curso);
  }
}
