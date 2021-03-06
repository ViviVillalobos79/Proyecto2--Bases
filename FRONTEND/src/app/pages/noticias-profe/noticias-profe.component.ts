import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso, Noticia } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { EstudianteService } from '../../services/sql_services/Estudiantes/estudiante.service';
import { NoticiasGenerales } from 'src/app/models/SQL_Models/Estudiante';
import { NoticiaService } from '../../services/sql_services/Profesores/noticia.service';

@Component({
  selector: 'app-noticias-profe',
  templateUrl: './noticias-profe.component.html',
  styleUrls: ['./noticias-profe.component.css'],
  providers: [ProfesorService, EstudianteService, NoticiaService],
})
export class NoticiasProfeComponent implements OnInit {
  username: string;
  idCurso: string;
  nombrecurso: string;
  grupo: string;
  curso: Datos_Curso;
  noticias = [{}];
  noticiasAll: NoticiasGenerales[];
  noticiasCompletas = [];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private estudianteSvc: EstudianteService,
    private noticiaSvc: NoticiaService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.noticias = [];

    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);
      this.getNoticias();
    });
  }

  getNoticias() {
    this.estudianteSvc.getNoticiasGrupo(this.idCurso).subscribe((res) => {
      this.noticiasAll = res;
      console.log('moti ', res);
      this.setNoticias();
    });
  }

  setNoticias() {
    this.noticiasAll.forEach((element) => {
      let not = {
        fecha: element.fecha,
        titulo: element.titulo,
        cuerpo: element.mensaje,
      };
      this.noticiasCompletas.push(not);
    });
  }

  crearNoticia(noticia) {
    let noti = new Noticia();
    noti.titulo = 'Quiz 30';
    noti.autor = Number(this.username);
    noti.fecha = '22/12/2020';
    noti.mensaje =
      'Ya se encuentra en XTECDigital la especificación sobreQuiz 30';
    noti.grupo = Number(this.idCurso);

    this.noticiaSvc.addNoticia(noti).subscribe((res) => {
      console.log('noti ', res);
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
    this.router.navigate(['noticiaProfe', this.username, this.idCurso]);
  }
}
