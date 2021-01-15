import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { CarpetasGrupo } from 'src/app/models/SQL_Models/Profesor';
import { Curso } from 'src/app/models/SQL_Models/Administrador';

import { CursoService } from '../../services/sql_services/Administradores/curso.service';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';

@Component({
  selector: 'app-ges-docos-profe',
  templateUrl: './ges-docos-profe.component.html',
  styleUrls: ['./ges-docos-profe.component.css'],
  providers: [CursoService,ProfesorService]
})
export class GesDocosProfeComponent implements OnInit {

  username: string;
  nombrecurso:string;
  grupo:string;
  nombreCarpeta:string;
  idCurso:string;
  curso:Curso;

  //carpetas = ["Presentaciones","Quices","Exámenes","Proyectos"];
  carpetas:CarpetasGrupo[] = [{id_carpeta:0,nombre:"0"}];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private cursoSvc: CursoService,
    private profesorSvc: ProfesorService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
    this.getCarpetas();


   // this.cursoSvc.getCurso().subscribe((res) => {
   //   console.log('Res ', res);
   // });
  }

  getCarpetas(){
    this.carpetas = [];
    this.profesorSvc.getCarpetasGrupo(this.idCurso).subscribe((res) => {
      this.carpetas = res;
      console.log('Res ', this.carpetas);
    });
  }


  buscar() {
  }

  crearCarpeta(nombre){
    this.nombreCarpeta = nombre;
  }

  visitarCarpeta(nombre){
    //Visitar la carpeta
  }


  iniciogo() {
    this.router.navigate(['inicio-deport', this.username]);
  }
  buscargo() {
    this.router.navigate(['buscar', this.username]);
  }

  retosGo() {
    this.router.navigate(['verRetos', this.username]);
  }

  competenciasGo() {
    this.router.navigate(['verCompetencias', this.username]);
  }

  verInfo(tipo, id) {
    if (tipo == 'reto') {
      this.router.navigate(['insreto', this.username, id]);
    }
    if (tipo == 'grupo') {
      this.router.navigate(['asogrupo', this.username, id]);
    }
    if (tipo == 'competencia') {
      this.router.navigate(['inscarrera', this.username, id]);
    }
    if (tipo == 'atleta') {
      this.router.navigate(['atleta', this.username, id, 'false']);
    }
  }



}
