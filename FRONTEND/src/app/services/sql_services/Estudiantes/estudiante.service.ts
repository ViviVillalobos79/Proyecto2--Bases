import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Estudiante } from 'src/app/models/SQL_Models/Estudiante';
import { CursosEstudiante } from 'src/app/models/SQL_Models/Estudiante';
import { NoticiasGenerales } from 'src/app/models/SQL_Models/Estudiante';
import { NotaGrupoEstudiante } from 'src/app/models/SQL_Models/Estudiante';

@Injectable({
  providedIn: 'root'
})
export class EstudianteService {

  /**
   * {
        "carnet": 2011000000
    }
   */
  url:string = '/apis/estudiante';

  constructor(private http:HttpClient) { }

  getAllEstudiantes():Observable<Estudiante>{
    return this.http.get<Estudiante>(this.url);
  }

  getEstudiante(carnet:number):Observable<Estudiante[]>{
    return this.http.get<Estudiante[]>(this.url + '/' + carnet);
  }

  addEstudiante(estudiante:Estudiante):Observable<Estudiante>{
    return this.http.post<Estudiante>(this.url, estudiante);
  }

  updateEstudiante(carnet:number, estudiante:Estudiante):Observable<Estudiante>{
    return this.http.put<Estudiante>(this.url + '/' + carnet, estudiante);
  }

  deleteEstudiante(carnet:number):Observable<Estudiante>{
    return this.http.delete<Estudiante>(this.url + '/' + carnet);
  }

  // Retorna lista de los cursos de un estudiante
  getCursosEstudiante(carnet:string):Observable<CursosEstudiante[]>{
    return this.http.get<CursosEstudiante[]>(this.url + '/cursos/' + carnet);
  }

  //Lista de noticias generales
  getNoticiasGenerales(carnet:number):Observable<NoticiasGenerales>{
    return this.http.get<NoticiasGenerales>(this.url + '/noticias/' + carnet);
  }

  //Retorna notas de un estudiante en un curso
  getNotaGrupoEstudiante(carnet:number, id_grupo:number):Observable<NotaGrupoEstudiante>{
    return this.http.get<NotaGrupoEstudiante>(this.url + '/nota/grupo/' + carnet + '/' + id_grupo);
  }

  //Retorna lista de noticias en un curso para un grupo
  getNoticiasGrupo(id_grupo:string):Observable<NoticiasGenerales[]>{
    return this.http.get<NoticiasGenerales[]>(this.url + '/noticias/grupo/' + id_grupo);
  }

}
