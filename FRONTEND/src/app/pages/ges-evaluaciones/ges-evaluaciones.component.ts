import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';

@Component({
  selector: 'app-ges-evaluaciones',
  templateUrl: './ges-evaluaciones.component.html',
  styleUrls: ['./ges-evaluaciones.component.css'],
  providers: [ProfesorService],
})
export class GesEvaluacionesComponent implements OnInit {
  evaluaciones = [
    {
      Nombre: 'Examenes',
      valor: '30',
      rubros: ['Examen 1', 'Examen 2'],
      porcentajes: ['15', '15'],
    },
    {
      Nombre: 'Quices',
      valor: '30',
      rubros: ['Quiz 1', 'quiz 2'],
      porcentajes: ['15', '15'],
    },
    {
      Nombre: 'Proyectos',
      valor: '40',
      rubros: ['Proyecto 1', 'Proyecto 2'],
      porcentajes: ['20', '20'],
    },
  ];
  username: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;
  curso: Datos_Curso;

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService
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

  goMatriz() {
    this.router.navigate(['matrizEvaluaciones', this.username, this.idCurso]);
  }
}
