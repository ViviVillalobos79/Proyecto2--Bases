import { Component, OnInit } from '@angular/core';
import { Datos_Curso, Evaluacion } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { EvaluacionService } from '../../services/sql_services/Profesores/evaluacion.service';
import { Router, ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-revisiones-profe',
  templateUrl: './revisiones-profe.component.html',
  styleUrls: ['./revisiones-profe.component.css']
})
export class RevisionesProfeComponent implements OnInit {

  username: string;
  nombrecurso: string;
  grupo: string;
  nombreCarpeta: string;
  idCurso: string;
  curso: Datos_Curso;

  evaluaciones = [];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private evaluacionSvc: EvaluacionService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);
      this.getEvaluaciones();
    });
  }

  getEvaluaciones() {
    this.evaluacionSvc.getAllEvaluaciones().subscribe((res) => {
      console.log('All ', res);
      this.setEvaluaciones(res);
    });
  }

  setEvaluaciones(rubrosH: Evaluacion[]) {
    rubrosH.forEach((element) => {
      if (
        element.grupo.toString() == this.idCurso
      ) {
        let rub = {
          id:element.id_evaluacion,
          nombre: element.especificacion,
          tipo: element.tipo_evaluacion,
          fecha:
            element.fecha[0] +
            element.fecha[1] +
            element.fecha[2] +
            element.fecha[3] +
            element.fecha[4] +
            element.fecha[5] +
            element.fecha[6] +
            element.fecha[7] +
            element.fecha[8] +
            element.fecha[9],
          hora: element.hora
        };
        this.evaluaciones.push(rub);
      }
    });
  }

  evaluar(idEvaluacion){
    this.router.navigate(['verRubrosRevisar', this.username, this.idCurso, idEvaluacion]);
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
