import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from 'src/app/services/sql_services/Profesores/profesor.service';

@Component({
  selector: 'app-notas',
  templateUrl: './notas.component.html',
  styleUrls: ['./notas.component.css'],
})
export class NotasComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  headers = [{}];
  idCurso:string;
  curso: Datos_Curso;

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

    
    this.headers = [
      { head: 'Carnet', value: 2017147709 },
      { head: 'Nombre', value: 'Estudiante' },
      { head: 'Examen I', value: 70 },
      { head: 'Examen II', value: 70 },
      { head: 'Promedio', value: 70 },
    ];
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
}
