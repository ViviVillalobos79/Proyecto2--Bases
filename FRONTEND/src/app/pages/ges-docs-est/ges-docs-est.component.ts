import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { CarpetasGrupo, Datos_Curso } from 'src/app/models/SQL_Models/Profesor';
import { Carpeta } from 'src/app/models/SQL_Models/Profesor';

import { ProfesorService } from 'src/app/services/sql_services/Profesores/profesor.service';
import { CarpetaService } from '../../services/sql_services/Profesores/carpeta.service'

@Component({
  selector: 'app-ges-docs-est',
  templateUrl: './ges-docs-est.component.html',
  styleUrls: ['./ges-docs-est.component.css'],
  providers:[CarpetaService]
})
export class GesDocsEstComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;
  curso: Datos_Curso;
  carpetas: CarpetasGrupo[]=[]
  

  constructor(
    private router: Router, 
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private carpetaSvc: CarpetaService){
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
     
    });
    this.getCarpetas()

    //Verificar las carpetas del curso preguntandole al server
    //Solicitar el nombre del curso y el grupo para rellenar la informacion
  }
  getCarpetas() {
    this.carpetas = [];
    this.profesorSvc.getCarpetasGrupo(this.idCurso).subscribe((res) => {
      this.carpetas = res;
      console.log('Res ', this.carpetas);
    });
  }

  perfilGo() {
    this.router.navigate(['profile', this.carnet]);
  }

  iniciogo() {
    this.router.navigate(['inicio', this.carnet]);
  }
  cursosGo() {
    this.router.navigate(['inicio', this.carnet]);
  }

  noticiasGo() {
    this.router.navigate(['noticias', this.carnet, this.idCurso]);
  }
  documentosGo(){
    this.router.navigate(['gesDocEst', this.carnet, this.idCurso]);
  }
  evaluacionesGo(){
    this.router.navigate(['sendEva', this.carnet, this.idCurso]);
  }

  abrir(id) {
    this.router.navigate(['docEst',this.carnet,this.idCurso,id]);
  }
}
