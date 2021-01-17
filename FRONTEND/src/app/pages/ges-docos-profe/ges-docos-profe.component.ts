import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import {
  Carpeta,
  CarpetasGrupo,
  Datos_Curso,
  SP_grupo_carpetas,
} from 'src/app/models/SQL_Models/Profesor';
import { Curso } from 'src/app/models/SQL_Models/Administrador';

import { CursoService } from '../../services/sql_services/Administradores/curso.service';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { CarpetaService } from '../../services/sql_services/Profesores/carpeta.service';


@Component({
  selector: 'app-ges-docos-profe',
  templateUrl: './ges-docos-profe.component.html',
  styleUrls: ['./ges-docos-profe.component.css'],
  providers: [CursoService, ProfesorService,CarpetaService],
})
export class GesDocosProfeComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  nombreCarpeta: string;
  idCurso: string;
  curso: Datos_Curso;

  //carpetas = ["Presentaciones","Quices","Exámenes","Proyectos"];
  carpetas: CarpetasGrupo[] = [{ id_carpeta: 0, nombre: '0' }];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private cursoSvc: CursoService,
    private profesorSvc: ProfesorService,
    private carpetasSvc:CarpetaService
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
      this.getCarpetas();
    });
  }

  getCarpetas() {
    this.carpetas = [];
    this.profesorSvc.getCarpetasGrupo(this.idCurso).subscribe((res) => {
      this.carpetas = res;
      console.log('Res ', this.carpetas);
    });
  }

  crearCarpeta(nombre) {
    this.nombreCarpeta = nombre;
    let fecha = '8/12/2020';

    let carpeta = new SP_grupo_carpetas();
    carpeta.nombre = "videos 2";
    carpeta.id_grupo = 1;

    console.log('carpeta a poner ', carpeta);
    this.carpetasSvc.addCarpeta(carpeta).subscribe((res) => {
      console.log('nueva carpeta res ', res);
    });
  }

  visitarCarpeta(idCarpeta, nombreCarpeta) {
    //Visitar la carpeta
    this.router.navigate([
      'carpeta',
      this.username,
      this.idCurso,
      idCarpeta,
      nombreCarpeta,
    ]);
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
