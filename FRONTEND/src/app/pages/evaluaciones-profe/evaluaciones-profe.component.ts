import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso, Evaluacion } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { EvaluacionService } from '../../services/sql_services/Profesores/evaluacion.service';

@Component({
  selector: 'app-evaluaciones-profe',
  templateUrl: './evaluaciones-profe.component.html',
  styleUrls: ['./evaluaciones-profe.component.css'],
  providers: [ProfesorService, EvaluacionService],
})
export class EvaluacionesProfeComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  nombreCarpeta: string;
  idCurso: string;
  idRubro: string;
  curso: Datos_Curso;
  total: string;
  nombreNewEvaluacion: string;
  tipoNewEvaluacion: string;
  fechaNewEvaluacion: string;
  horanewEvaluacion: string;


  evaluaciones = [];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private evaluacionSvc: EvaluacionService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
    this.idRubro = this._route.snapshot.paramMap.get('idRubro');
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
        element.grupo.toString() == this.idCurso &&
        element.rubro.toString() == this.idRubro
      ) {
        let rub = {
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

  nombreNewevaluacion(nombre) {
    this.nombreNewEvaluacion = nombre;
  }

  tipoNewevaluacion(valor) {
    this.tipoNewEvaluacion = valor;
  }

  FechaNewevaluacion(valor) {
    this.fechaNewEvaluacion = valor;
  }

  horaNewevaluacion(valor) {
    this.horanewEvaluacion = valor;
  }

  crearEvaluacion() {
    let rub = new Evaluacion();
    rub.tipo_evaluacion = this.tipoNewEvaluacion;
    rub.especificacion = this.nombreNewEvaluacion;
    rub.grupo = Number(this.idCurso);
    rub.fecha = '';
    rub.hora = this.horanewEvaluacion;
    rub.rubro = Number(this.idRubro);

    this.evaluacionSvc.addEvaluacion(rub).subscribe((res) => {
      console.log('evaluacion agregado ', res);
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
