import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso, Noticia } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { EstudianteService } from '../../services/sql_services/Estudiantes/estudiante.service';

@Component({
  selector: 'app-noticias-profe',
  templateUrl: './noticias-profe.component.html',
  styleUrls: ['./noticias-profe.component.css'],
  providers: [ProfesorService,EstudianteService],
})
export class NoticiasProfeComponent implements OnInit {
  username: string;
  idCurso: string;
  nombrecurso: string;
  grupo: string;
  curso: Datos_Curso;
  noticias = [{}];
  noticiasAll:Noticia[];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private estudianteSvc: EstudianteService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {

    this.noticias = [
      {
        fecha: '12 de Diciembre',
        titulo: 'Notas',
        cuerpo: 'Las notas estan entregadas, se pueden ver en evaluaciones',
        autor: 'Diego',
      },
      {
        fecha: '15 de Diciembre',
        titulo: 'Quiz',
        cuerpo: 'Descargar el quiz de documentos/quices, para la clase de hoy',
        autor: 'Isaac',
      },
    ];

    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);

    });
  }


  getNoticias(){
    this.estudianteSvc.getNoticiasGrupo(this.idCurso).subscribe((res) => {

      console.log('Res ', res;

    });
  }

  goInicio() {
    this.router.navigate(['inicio', this.username]);
  }

  goCursos() {
    this.router.navigate(['inicio', this.username]);
  }

  goPerfil() {
    this.router.navigate(['profile', this.username]);
  }

  goDocs() {
    this.router.navigate(['gesDocProfe', this.username, this.idCurso]);
  }

  goEvaluaciones() {
    this.router.navigate(['gesEvaluaciones', this.username, this.idCurso]);
  }

  goNoticias() {
    //goNoticias
  }
}
