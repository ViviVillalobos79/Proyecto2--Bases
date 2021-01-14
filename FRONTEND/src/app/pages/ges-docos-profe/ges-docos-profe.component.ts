import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Carpeta } from 'src/app/models/SQL_Models/Profesor';
import { Curso } from 'src/app/models/SQL_Models/Administrador';

import { CursoService } from '../../services/sql_services/Administradores/curso.service';

@Component({
  selector: 'app-ges-docos-profe',
  templateUrl: './ges-docos-profe.component.html',
  styleUrls: ['./ges-docos-profe.component.css'],
  providers: [CursoService]
})
export class GesDocosProfeComponent implements OnInit {

  username: string;
  nombrecurso:string;
  grupo:string;
  nombreCarpeta:string;
  idCurso:string;
  curso:Curso;

  //carpetas = ["Presentaciones","Quices","Exámenes","Proyectos"];
  carpetas:Carpeta[];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private cursoSvc: CursoService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";

    this.cursoSvc.getCurso(this.idCurso).subscribe((res) => {
      console.log('Res ', res);
      
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
