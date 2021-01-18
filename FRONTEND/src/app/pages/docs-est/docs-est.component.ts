import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { EstudianteService } from 'src/app/services/sql_services/Estudiantes/estudiante.service';
import { ProfesorService } from 'src/app/services/sql_services/Profesores/profesor.service';
import { Datos_Curso } from '../../models/SQL_Models/Profesor'

@Component({
  selector: 'app-docs-est',
  templateUrl: './docs-est.component.html',
  styleUrls: ['./docs-est.component.css'],
  providers: [EstudianteService,ProfesorService]
})
export class DocsEstComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  documento = [];
  idCurso:string;
  idCarpeta:string;

  curso: Datos_Curso;

  constructor(
    private router: Router, 
    private _route: ActivatedRoute,
    private estudiantesSvc: EstudianteService,
    private profesorSvc: ProfesorService) {
    this.username = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
    this.idCarpeta = this._route.snapshot.paramMap.get('idCarpeta');

  }

  ngOnInit(): void {
    //Obtemer la informacion del curso
    //Obtener y mostrar los documentos de la carpeta
    //Agregar lo de descargar los documentos (Amazon)
    
    
    //Obtener la información del curso

    // this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
    //   this.curso = res[0];
    //   this.nombrecurso = this.curso.nombre_curso;
    //   this.grupo = this.curso.numero_grupo.toString();
    //   console.log('Res ', this.curso);
    // });

    this.documento = ['Laboratorio', 'Especificación de proyecto'];
  }

  goInicio(){
    this.router.navigate(['inicio', this.username]);
  }

  goCursos(){
    this.router.navigate(['inicio', this.username]);
  }

  goPerfil(){
    this.router.navigate(['profile', this.username]);
  }

  goNoticias(){
    this.router.navigate(['noticias', this.username, this.idCurso]);
  }

  goDocumentos(){
    //Ruta para ir a las carpetas del curso
  }

  goEvaluaciones(){
    //Ruta para ir a la evaluacion del curso
  }



}
