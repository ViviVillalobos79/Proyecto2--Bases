import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from 'src/app/services/sql_services/Profesores/profesor.service';
@Component({
  selector: 'app-ges-docs-est',
  templateUrl: './ges-docs-est.component.html',
  styleUrls: ['./ges-docs-est.component.css'],
})
export class GesDocsEstComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;
  curso: Datos_Curso;

  carpetas = [
    { nombre: 'Presentaciones', id: 0 },
    { nombre: 'Quices', id: 1 },
    { nombre: 'Quices', id: 2 },
    { nombre: 'Quices', id: 3 },
  ];

  //carpetas = ["Presentaciones","Quices","Quices","Quices"]

  constructor(
    private router: Router, 
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);
    });
    // this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    // this.grupo = '4';
    //Verificar las carpetas del curso preguntandole al server
    //Solicitar el nombre del curso y el grupo para rellenar la informacion
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
