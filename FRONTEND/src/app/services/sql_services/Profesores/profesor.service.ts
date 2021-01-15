import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Datos_Curso, Profesor } from 'src/app/models/SQL_Models/Profesor';
import { EstudiantesMatriculados } from 'src/app/models/SQL_Models/Profesor';
import { CursosProfesor } from 'src/app/models/SQL_Models/Profesor';
import { DocumentosCarpeta } from 'src/app/models/SQL_Models/Profesor';
import { CarpetasGrupo } from 'src/app/models/SQL_Models/Profesor';
import { ReporteNotas } from 'src/app/models/SQL_Models/Profesor';

@Injectable({
  providedIn: 'root'
})
export class ProfesorService {

  url:string = '/apis/profesor';

  constructor(private http:HttpClient) { }

  getAllProfesores():Observable<Profesor>{
    return this.http.get<Profesor>(this.url);
  }

  getProfesor(cedula:number):Observable<Profesor[]>{
    return this.http.get<Profesor[]>(this.url + '/' + cedula);
  }

  addProfesor(profesor:Profesor):Observable<Profesor>{
    return this.http.post<Profesor>(this.url, profesor);
  }

  updateProfesor(cedula:number,profesor:Profesor):Observable<Profesor>{
    return this.http.put<Profesor>(this.url + '/' + cedula, profesor);
  }

  deleteProfesor(cedula:number):Observable<Profesor>{
    return this.http.delete<Profesor>(this.url + '/' + cedula);
  }

  // Retorna lista de estudiantes matriculados en un curso, por medio del id del grupo
  getEstudiantesMatriculados(id_grupo:number):Observable<EstudiantesMatriculados>{
    return this.http.get<EstudiantesMatriculados>(this.url + '/estudiantes/matriculados/' + id_grupo);
  }

  // Retorna lista de cursos que imparte un profesor
  getCursosProfesor(cedula:number):Observable<CursosProfesor>{
    return this.http.get<CursosProfesor>(this.url + '/cursos/' + cedula);
  }

  // Retorna los documentos que se encuentran en una carpeta de un grupo, por nombre de carpeta y id del grupo
  getDocumentosCarpeta(id_grupo:number, carpeta:string):Observable<DocumentosCarpeta>{
    return this.http.get<DocumentosCarpeta>(this.url + '/documentos/carpeta/' + id_grupo + '/' + carpeta);
  }

  // Retorna lista de carpetas en un grupo por medio del id del grupo
  getCarpetasGrupo(id_grupo:number):Observable<CarpetasGrupo>{
    return this.http.get<CarpetasGrupo>(this.url + '/carpeta/grupo/' + id_grupo)
  }

  getReporteNotas(id_grupo:number):Observable<ReporteNotas>{
    return this.http.get<ReporteNotas>(this.url + '/reporte/notas/' + id_grupo);
  }

  getDatos_Curso(id_grupo:number):Observable<Datos_Curso>{
    return this.http.get<Datos_Curso>(this.url + '/datos/grupo/' + id_grupo);
  }
}
